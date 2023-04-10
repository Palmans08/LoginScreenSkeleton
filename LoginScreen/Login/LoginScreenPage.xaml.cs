using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using BC = BCrypt.Net.BCrypt;
using LoginScreen.DatabaseClasses;

namespace LoginScreen.Login
{
    /// <summary>
    /// Interaction logic for LoginScreenPage.xaml
    /// </summary>
    public partial class LoginScreenPage : Page
    {
        public LoginScreenPage()
        {
            InitializeComponent();
        }

        private void btnLogin_Click(object sender, RoutedEventArgs e)
        {
            txtErrorMessage.Text = "";

            if (txbUsername.Text == "" || psbPassword.Password == "")
            {
                txtErrorMessage.Text = "Empty field detected, please fill in the required boxes.";
                return;
            }

            using (var db = new DatabaseContent())
            {
                var user = db.Users.FirstOrDefault(us => us.Username == txbUsername.Text);

                if (user != null)
                {
                    if (BC.Verify(psbPassword.Password, user.Password))
                    {
                        App.activeUser = user;

                        MainWindow program = new MainWindow();
                        program.Show();
                        Window.GetWindow(this).Close();/*Find code to close window in page*/
                    }
                    else txtErrorMessage.Text = "Incorrect username or password";
                }
                else txtErrorMessage.Text = "Incorrect username or password";
            }
        }
        private void txbUsername_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.Key == Key.Enter) btnLogin_Click(sender, e);
        }

        private void psbPassword_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.Key == Key.Enter) btnLogin_Click(sender, e);
        }
        private void btnForgotPassword_Click(object sender, RoutedEventArgs e)
        {
            LoginForgotPasswordPage loginForgotPassword = new LoginForgotPasswordPage();
            NavigationService.Navigate(loginForgotPassword);
        }

        private void btnCreateNewAcc_Click(object sender, RoutedEventArgs e)
        {
            LoginCreateAccountPage loginCreateAccount = new LoginCreateAccountPage();
            NavigationService.Navigate(loginCreateAccount);
        }
    }
}
