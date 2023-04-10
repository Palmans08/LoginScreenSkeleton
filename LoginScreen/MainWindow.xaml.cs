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

namespace LoginScreen
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            txtCurrentUser.Text = $"{App.activeUser.Firstname} {App.activeUser.Lastname}";
        }

        private void btnExample1_Click(object sender, RoutedEventArgs e)
        {

        }

        private void btnExample2_Click(object sender, RoutedEventArgs e)
        {

        }

        private void btnExample3_Click(object sender, RoutedEventArgs e)
        {

        }

        private void btnExample4_Click(object sender, RoutedEventArgs e)
        {

        }

        private void btnExample5_Click(object sender, RoutedEventArgs e)
        {

        }
    }
}
