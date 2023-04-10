using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LoginScreen.DatabaseClasses
{
    internal class User
    {
        public int UserId { get; set; }
        public string Firstname { get; set; }
        public string Lastname { get; set; }
        public string Username { get; set; }
        public string Password { get; set; }

        public User(string firstname, string lastname, string username, string password)
        {
            Firstname = firstname;
            Lastname = lastname;
            Username = username;
            Password = password;
        }
    }
}
