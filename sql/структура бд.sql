-- Создание базы данных
CREATE DATABASE SchoolDB;
GO

USE SchoolDB;
GO

-- Таблица ролей пользователей
CREATE TABLE Roles (
    RoleID INT IDENTITY(1,1) PRIMARY KEY,
    RoleName NVARCHAR(50) NOT NULL
);

-- Таблица групп (учебных классов)
CREATE TABLE Groups (
    GroupID INT IDENTITY(1,1) PRIMARY KEY,
    GroupName NVARCHAR(50) NOT NULL,
    Description NVARCHAR(255)
);

-- Таблица пользователей
CREATE TABLE Users (
    UserID INT IDENTITY(1,1) PRIMARY KEY,
    FirstName NVARCHAR(50) NOT NULL,
    LastName NVARCHAR(50) NOT NULL,
    MiddleName NVARCHAR(50),
    BirthDate DATE,
    Email NVARCHAR(100) UNIQUE,
    Phone NVARCHAR(20),
    RoleID INT NOT NULL,
    GroupID INT,
    Username NVARCHAR(50) UNIQUE NOT NULL,
    PasswordHash NVARCHAR(255) NOT NULL,
    CONSTRAINT FK_Users_Roles FOREIGN KEY (RoleID) REFERENCES Roles(RoleID),
    CONSTRAINT FK_Users_Groups FOREIGN KEY (GroupID) REFERENCES Groups(GroupID)
);

-- Таблица предметов
CREATE TABLE Subjects (
    SubjectID INT IDENTITY(1,1) PRIMARY KEY,
    SubjectName NVARCHAR(100) NOT NULL,
    Description NVARCHAR(255)
);

-- Таблица учебных групп (привязка студентов и преподавателей к предметам)
CREATE TABLE StudyGroups (
    StudyGroupID INT IDENTITY(1,1) PRIMARY KEY,
    GroupID INT NOT NULL,
    SubjectID INT NOT NULL,
    TeacherID INT NOT NULL,
    AcademicYear NVARCHAR(20) NOT NULL,
    CONSTRAINT FK_StudyGroups_Groups FOREIGN KEY (GroupID) REFERENCES Groups(GroupID),
    CONSTRAINT FK_StudyGroups_Subjects FOREIGN KEY (SubjectID) REFERENCES Subjects(SubjectID),
    CONSTRAINT FK_StudyGroups_Teachers FOREIGN KEY (TeacherID) REFERENCES Users(UserID)
);

-- Таблица успеваемости
CREATE TABLE AcademicPerformance (
    PerformanceID INT IDENTITY(1,1) PRIMARY KEY,
    StudentID INT NOT NULL,
    StudyGroupID INT NOT NULL,
    GradeDate DATE NOT NULL,
    Grade INT CHECK (Grade BETWEEN 1 AND 5),
    Attendance BIT NOT NULL, -- 1 - присутствовал, 0 - отсутствовал
    Comment NVARCHAR(500),
    CONSTRAINT FK_AcademicPerformance_Students FOREIGN KEY (StudentID) REFERENCES Users(UserID),
    CONSTRAINT FK_AcademicPerformance_StudyGroups FOREIGN KEY (StudyGroupID) REFERENCES StudyGroups(StudyGroupID)
);

-- Вставка базовых ролей
INSERT INTO Roles (RoleName) VALUES 
('Администратор'),
('Преподаватель'),
('Ученик');
GO

-- Создание представления для просмотра успеваемости
CREATE VIEW StudentPerformanceView AS
SELECT 
    s.UserID AS StudentID,
    s.FirstName + ' ' + s.LastName AS StudentName,
    g.GroupName,
    sub.SubjectName,
    t.FirstName + ' ' + t.LastName AS TeacherName,
    ap.GradeDate,
    ap.Grade,
    CASE ap.Attendance WHEN 1 THEN 'Присутствовал' ELSE 'Отсутствовал' END AS Attendance,
    ap.Comment
FROM 
    AcademicPerformance ap
    INNER JOIN Users s ON ap.StudentID = s.UserID
    INNER JOIN StudyGroups sg ON ap.StudyGroupID = sg.StudyGroupID
    INNER JOIN Groups g ON sg.GroupID = g.GroupID
    INNER JOIN Subjects sub ON sg.SubjectID = sub.SubjectID
    INNER JOIN Users t ON sg.TeacherID = t.UserID;
GO

-- Создание индексов для улучшения производительности
CREATE INDEX IX_Users_RoleID ON Users(RoleID);
CREATE INDEX IX_Users_GroupID ON Users(GroupID);
CREATE INDEX IX_StudyGroups_GroupID ON StudyGroups(GroupID);
CREATE INDEX IX_StudyGroups_SubjectID ON StudyGroups(SubjectID);
CREATE INDEX IX_StudyGroups_TeacherID ON StudyGroups(TeacherID);
CREATE INDEX IX_AcademicPerformance_StudentID ON AcademicPerformance(StudentID);
CREATE INDEX IX_AcademicPerformance_StudyGroupID ON AcademicPerformance(StudyGroupID);
GO