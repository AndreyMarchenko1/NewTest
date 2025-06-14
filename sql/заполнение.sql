USE SchoolDB;
GO

-- ������� ���������� ������ (���� �����)
DELETE FROM AcademicPerformance;
DELETE FROM StudyGroups;
DELETE FROM Subjects;
DELETE FROM Users;
DELETE FROM Groups;
DELETE FROM Roles;
GO

-- ������� �����
INSERT INTO Roles (RoleName) VALUES 
('�������������'),
('�������������'),
('������');
GO

-- ������� �����
INSERT INTO Groups (GroupName, Description) VALUES
('10-IT1', '10 �����, IT-������ 1'),
('10-IT2', '10 �����, IT-������ 2'),
('11-IT1', '11 �����, IT-������ 1'),
('11-IT2', '11 �����, IT-������ 2'),
('9-IT', '9 �����, IT-������');
GO

-- ������� ��������� (��� �����)
INSERT INTO Subjects (SubjectName, Description) VALUES
('������ ������������� �� ���� LEGO Mindstorms EV3', '�������� ����� ������������� � �������������� ������������� LEGO Mindstorms EV3'),
('������ ������������� �� ����� Scratch', '�������� � ������������� � ���������� ����������������� �� Scratch'),
('���������� � ������ ���������������� �����������������', '�������� ����������� � �������� ���������������� �����������������'),
('���������������� ����������������� STM32 � STM32CubeIDE', '����������� ���������������� ����������������� STM32'),
('������ IT', '������� ������� �������������� ����������'),
('����������� �������� IT-����������', '����������� ���� � ������� �������������� ����������'),
('���������� � ��� �� �����������', '���������� � ��������� ���������������� �������� �� �����������'),
('���������� � ��� �� ����������� � ���', '���������� � ������� ���������������� ��������'),
('3D-������', '�������� ���������� 3D-������ � �������������'),
('����������� ����������� �������� (����)', '�������� ���������� � ���������������� ������');
GO

-- ������� ������������� � ����������� ���������
INSERT INTO Users (FirstName, LastName, MiddleName, BirthDate, Email, Phone, RoleID, GroupID, Username, PasswordHash) VALUES
-- ��������������
('�������', '������', '���������', '1980-05-15', 'admin1@school.ru', '+79151112233', 1, NULL, 'admin1', 'EF797C8118F02DFB649607DD5D3F8C7623048C9C063D532CC95C5ED7A898A64F'),
('�����', '�������', '����������', '1982-11-23', 'admin2@school.ru', '+79152223344', 1, NULL, 'admin2', 'EF797C8118F02DFB649607DD5D3F8C7623048C9C063D532CC95C5ED7A898A64F'),

-- �������������
('�������', '�������', '�������������', '1985-04-12', 'sokolov@school.ru', '+79153334455', 2, NULL, 'teacher1', 'EF797C8118F02DFB649607DD5D3F8C7623048C9C063D532CC95C5ED7A898A64F'),
('����', '���������', '��������', '1988-07-23', 'kuznetsova@school.ru', '+79154445566', 2, NULL, 'teacher2', 'EF797C8118F02DFB649607DD5D3F8C7623048C9C063D532CC95C5ED7A898A64F'),
('������', '�����', '����������', '1983-09-15', 'popov@school.ru', '+79155556677', 2, NULL, 'teacher3', 'EF797C8118F02DFB649607DD5D3F8C7623048C9C063D532CC95C5ED7A898A64F'),
('�����', '���������', '����������', '1986-11-30', 'vasileva@school.ru', '+79156667788', 2, NULL, 'teacher4', 'EF797C8118F02DFB649607DD5D3F8C7623048C9C063D532CC95C5ED7A898A64F'),
('����', '�������', '��������', '1984-03-18', 'morozov@school.ru', '+79157778899', 2, NULL, 'teacher5', 'EF797C8118F02DFB649607DD5D3F8C7623048C9C063D532CC95C5ED7A898A64F'),

-- �������
('�����', '�������', '����������', '2007-02-14', 'smirnov@school.ru', '+79160001122', 3, 1, 'student1', 'EF797C8118F02DFB649607DD5D3F8C7623048C9C063D532CC95C5ED7A898A64F'),
('�����', '��������', '���������', '2007-05-23', 'novikova@school.ru', '+79161112233', 3, 1, 'student2', 'EF797C8118F02DFB649607DD5D3F8C7623048C9C063D532CC95C5ED7A898A64F'),
('������', '������', '���������', '2006-08-30', 'volkov@school.ru', '+79162223344', 3, 2, 'student3', 'EF797C8118F02DFB649607DD5D3F8C7623048C9C063D532CC95C5ED7A898A64F'),
('�����', '�������', '��������', '2006-11-12', 'pavlova@school.ru', '+79163334455', 3, 2, 'student4', 'EF797C8118F02DFB649607DD5D3F8C7623048C9C063D532CC95C5ED7A898A64F'),
('������', '�������', '����������', '2005-01-25', 'fedorov@school.ru', '+79164445566', 3, 3, 'student5', 'EF797C8118F02DFB649607DD5D3F8C7623048C9C063D532CC95C5ED7A898A64F'),
('��������', '�������', '����������', '2005-04-18', 'kozlova@school.ru', '+79165556677', 3, 3, 'student6', 'EF797C8118F02DFB649607DD5D3F8C7623048C9C063D532CC95C5ED7A898A64F'),
('������', '�������', '����������', '2005-07-09', 'lebedev@school.ru', '+79166667788', 3, 4, 'student7', 'EF797C8118F02DFB649607DD5D3F8C7623048C9C063D532CC95C5ED7A898A64F'),
('������', '���������', '����������', '2005-09-30', 'solovieva@school.ru', '+79167778899', 3, 4, 'student8', 'EF797C8118F02DFB649607DD5D3F8C7623048C9C063D532CC95C5ED7A898A64F'),
('������', '������', '���������', '2008-03-22', 'egorov@school.ru', '+79168889900', 3, 5, 'student9', 'EF797C8118F02DFB649607DD5D3F8C7623048C9C063D532CC95C5ED7A898A64F'),
('��������', '������', '�������������', '2008-06-15', 'orlova@school.ru', '+79169990011', 3, 5, 'student10', 'EF797C8118F02DFB649607DD5D3F8C7623048C9C063D532CC95C5ED7A898A64F');
GO

-- �������� ������� ����� � IT-����������
INSERT INTO StudyGroups (GroupID, SubjectID, TeacherID, AcademicYear) VALUES
-- 10-IT1
(1, 1, 3, '2023-2024'), -- LEGO Mindstorms, ��������� ������� �.�.
(1, 5, 4, '2023-2024'), -- ������ IT, ��������� ��������� �.�.
(1, 9, 7, '2023-2024'), -- 3D-������, ��������� ������� �.�.

-- 10-IT2
(2, 2, 3, '2023-2024'), -- Scratch �������������, ��������� ������� �.�.
(2, 6, 4, '2023-2024'), -- ����������� IT, ��������� ��������� �.�.
(2, 10, 7, '2023-2024'), -- ����, ��������� ������� �.�.

-- 11-IT1
(3, 3, 5, '2023-2024'), -- ����������������, ��������� ����� �.�.
(3, 4, 5, '2023-2024'), -- STM32, ��������� ����� �.�.
(3, 8, 6, '2023-2024'), -- ���������� � ���, ��������� ��������� �.�.

-- 11-IT2
(4, 3, 5, '2023-2024'), -- ����������������, ��������� ����� �.�.
(4, 7, 6, '2023-2024'), -- ���������� � ���, ��������� ��������� �.�.
(4, 10, 7, '2023-2024'), -- ����, ��������� ������� �.�.

-- 9-IT
(5, 1, 3, '2023-2024'), -- LEGO Mindstorms, ��������� ������� �.�.
(5, 2, 3, '2023-2024'), -- Scratch �������������, ��������� ������� �.�.
(5, 5, 4, '2023-2024'); -- ������ IT, ��������� ��������� �.�.
GO

-- ���������� ������������ ��� IT-���������
INSERT INTO AcademicPerformance (StudentID, StudyGroupID, GradeDate, Grade, Attendance, Comment) VALUES
-- ������ �� LEGO Mindstorms (10-IT1)
(11, 1, '2023-09-10', 5, 1, '�������� ������ ������'),
(11, 1, '2023-09-17', 4, 1, '������� ���������, �� ����� ������ ������ �����'),
(12, 1, '2023-09-10', 4, 1, '������� ������'),
(12, 1, '2023-09-17', 5, 1, '���������� ���������� ��������'),

-- ������ �� Scratch ������������� (10-IT2)
(13, 4, '2023-09-11', 5, 1, '�������� �������� ��������'),
(14, 4, '2023-09-11', 3, 1, '����� ���������� ������'),

-- ������ �� ����������������� (11-IT1)
(15, 7, '2023-09-14', 4, 1, '������ ���������� � ����������'),
(16, 7, '2023-09-14', 5, 1, '��������� ������ � ������������'),

-- ������ �� 3D-������ (10-IT1)
(11, 3, '2023-10-01', 5, 1, '�������� ������'),
(12, 3, '2023-10-01', 4, 1, '������� ������, �� ���� ��������� ������� ������'),

-- ����������
(13, 4, '2023-10-02', NULL, 0, '���������� � ������������� �� �������������'),
(15, 7, '2023-10-05', NULL, 0, '�������');
GO