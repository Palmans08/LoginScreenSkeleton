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
    /// Interaction logic for LoginForgotPasswordPage.xaml
    /// </summary>
    public partial class LoginForgotPasswordPage : Page
    {
        private string hardcodedVerificationCode = "$2a$11$nReewdLip4maZ0mSfhV0.eQlWDyvJi3GVnTLMrHPHVs.EsoIjl0VS";
        public LoginForgotPasswordPage()
        {
            InitializeComponent();
        }

        private void btnBack_Click(object sender, RoutedEventArgs e)
        {
            LoginScreenPage loginScreen = new LoginScreenPage();
            NavigationService.Navigate(loginScreen);
        }

        private void btnResetPassword_Click(object sender, RoutedEventArgs e)
        {
            txtMessage.Text = "";
            txtMessage.Foreground = new SolidColorBrush(Color.FromRgb(255, 0, 0));

            if (txbUsername.Text == "" || psbNewPassword.Password == "" || psbRepeatNewPassword.Password == "" || psbVerificationCode.Password == "")
            {
                txtMessage.Text = "* Empty field detected, please fill in the required boxes.";
                return;
            }

            if (psbNewPassword.Password != psbRepeatNewPassword.Password)
            {
                txtMessage.Text = "Passwords don't match. Please try again.";
                return;
            }

            using (var db = new DatabaseContent())
            {
                var user = db.Users.FirstOrDefault(us => us.Username == txbUsername.Text);

                if (user != null)
                {
                    var verificationcode = db.VerificationCodes.FirstOrDefault(vc => vc.VerificationCodeId == 1);
                    if (verificationcode.Verificationcode != hardcodedVerificationCode)
                    {
                        if (BC.Verify(psbVerificationCode.Password, verificationcode.Verificationcode) && BC.Verify(psbVerificationCode.Password, hardcodedVerificationCode))
                        {
                            var newPassword = BC.HashPassword(psbNewPassword.Password);
                            user.Password = newPassword;
                            db.SaveChanges();
                            txtMessage.Text = "Password has been changed.";
                            txtMessage.Foreground = new SolidColorBrush(Color.FromRgb(0, 255, 0));
                        }
                        else txtMessage.Text = "Invalid verification code.";
                    }
                    else
                    {
                        txtMessage.Text = "Someone tampered with the program, please contact the creator.";
                    }
                }
                else txtMessage.Text = "Username not found.";
            }
        }
    }
}
