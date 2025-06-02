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
using DIary1.Controllers;

namespace DIary1.Views.Pages.Auth
{
    /// <summary>
    /// Логика взаимодействия для SignUp.xaml
    /// </summary>
    public partial class SignUp : Page
    {
        UserController userController = new UserController();
        public SignUp()
        {
            InitializeComponent();
        }

        private void BtnRegister_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                if (!String.IsNullOrEmpty(TBoxFirstName.Text) && !String.IsNullOrEmpty(TBoxLastName.Text) && !String.IsNullOrEmpty(TBoxMiddleName.Text) && !String.IsNullOrEmpty(DpickerDataBirth.Text) && !String.IsNullOrEmpty(TBoxEmail.Text) && !String.IsNullOrEmpty(TBoxPhone.Text) && !String.IsNullOrEmpty(TBoxUserName.Text) && !String.IsNullOrEmpty(PBoxPassword.Password))
                {
                    var user = userController.CreateNewUser(TBoxFirstName.Text, TBoxLastName.Text, TBoxMiddleName.Text, DpickerDataBirth.SelectedDate.Value, TBoxEmail.Text, TBoxPhone.Text, TBoxUserName.Text, PBoxPassword.Password);
                    App.currentUsers = user;
                    this.NavigationService.Navigate(new HomePage());
                }
                else
                {
                    MessageBox.Show("Не все поля заполнены!");
                }
            }
            catch (Exception ex)
            {

                MessageBox.Show($"{ex.Message}", "Системная ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }

        private void Page_Loaded(object sender, RoutedEventArgs e)
        {
            DpickerDataBirth.DisplayDateEnd = DateTime.Now;
        }
    }
}
