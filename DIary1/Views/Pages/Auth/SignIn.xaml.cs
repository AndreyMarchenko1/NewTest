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
using DIary1.Views.Pages.Auth;
using DIary1.Controllers;

namespace DIary1.Views.Pages.Auth
{
    /// <summary>
    /// Логика взаимодействия для SignIn.xaml
    /// </summary>
    public partial class SignIn : Page
    {
        UserController userController = new UserController();
        public SignIn()
        {
            InitializeComponent();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {

        }

        private void HLinkRegistClick(object sender, RoutedEventArgs e)
        {
            this.NavigationService.Navigate(new SignUp());
        }

        private void BtnEnter_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                if (!String.IsNullOrEmpty(TBoxUserName.Text) && !String.IsNullOrEmpty(PBoxPassword.Password))
                {
                    var user = userController.SignIn(TBoxUserName.Text.Trim().ToLower(), PBoxPassword.Password.Trim().ToLower());
                    App.currentUsers = user;
                    this.NavigationService.Navigate(new HomePage());
                }
                else
                {
                    MessageBox.Show("Не все поля заполнены!", "Системная ошибка", MessageBoxButton.OK, MessageBoxImage.Warning);
                }
            }
            catch (Exception)
            {
                MessageBox.Show("Пользователь с текущими данными не найден!", "Системная ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }
    }
}
