using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Policy;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using System.Windows.Controls;
using DIary1.Models;

namespace DIary1.Controllers
{
    internal class UserController
    {
        Connection connection = new Connection();
        public List<Users> GetUsers()
        {
            try
            {
                var users = connection.auth.Users.ToList();
                return users;
            }
            catch (Exception ex)
            {
                {
                    throw new Exception($"{ex.Message}");
                }
            }

        }
        public Users CreateNewUser(string firstname, string lastname, string middlename, DateTime birthdate, string email, string phone,  string username, string password, int roleid = 5, int groupid = 0)
        {
            try
            {
                Users users = new Users
                {
                    FirstName = firstname,
                    LastName = lastname,
                    MiddleName = middlename,
                    BirthDate = birthdate,
                    Email = email,
                    Phone = phone,
                    Username = username,
                    PasswordHash = password,
                    RoleID = 5,
                    GroupID = 0,
                };
                connection.auth.Users.Add(users);
                connection.auth.SaveChanges();
                return users;
            }
            catch (Exception ex)
            {

                throw new Exception($"{ex.Message}");
            }
        }
        public Users SignIn(string username, string password)
        {
            try
            {
                var user = connection.auth.Users.Where(x=>x.Username == username && x.PasswordHash ==  password).First();
                return user;
            }
            catch (Exception ex)
            {

                throw new Exception($"{ex.Message}");
            }
        }
    }
}
