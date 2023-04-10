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
using System.Windows.Shapes;
using BC = BCrypt.Net.BCrypt;
using LoginScreen.DatabaseClasses;

namespace LoginScreen.Login
{
    /// <summary>
    /// Interaction logic for LoginBaseWindow.xaml
    /// </summary>
    public partial class LoginBaseWindow : Window
    {
        public LoginBaseWindow()
        {
            InitializeComponent();
            Login.Content = new LoginScreenPage();
        }

        private void btnMinimize_Click(object sender, RoutedEventArgs e)
        {
            WindowState = WindowState.Minimized;
        }

        private void btnClose_Click(object sender, RoutedEventArgs e)
        {
            Application.Current.Shutdown();
        }
    }
}
