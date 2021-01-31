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

namespace Isa4enkoProject.Pages
{
    /// <summary>
    /// Логика взаимодействия для LoginPage.xaml
    /// </summary>
    public partial class LoginPage : Page
    {
        public LoginPage()
        {
            InitializeComponent();
        }
        private void SaveUserSettings(int id, bool isChecked)
        {

            if (isChecked)
            {
                Properties.Settings.Default.UserId = id;
                Properties.Settings.Default.Save();
            }

        }
        private void Page_Loaded(object sender, RoutedEventArgs e)
        {
            var id_client = Properties.Settings.Default.UserId;
            if (id_client > 0)
            {

                var currentUser = AppData.Context.User1.ToList().FirstOrDefault(p => p.userId == id_client);
               
                if (currentUser != null)
                {
                    NavigateUser(currentUser);
                }
            }
        }

        private void NavigateUser(User1 currentUser)
        {
            switch (currentUser.id_roles)
            {
                case 1:
                    SaveUserSettings(currentUser.userId, CBIsRemembered.IsChecked.Value);
                    NavigationService.Navigate(new MenuAdminPage());
                    break;

                case 2:
                    SaveUserSettings(currentUser.userId, CBIsRemembered.IsChecked.Value);
                    NavigationService.Navigate(new Pages.MenuApplicantPage());
                    break;

                case 3:
                    SaveUserSettings(currentUser.userId, CBIsRemembered.IsChecked.Value);
                    NavigationService.Navigate(new Pages.MenuEmployersPage());
                    break;

                default:
                    MessageBox.Show("Для данной должности не предусмотрен функционал", "Ошибка!", MessageBoxButton.OK, MessageBoxImage.Error);
                    break;
            }
        }

        private void ButEnter_Click(object sender, RoutedEventArgs e)
        {

            if (TBLogin.Text != "" && PBUserPasssword.Password != "")
            {
                var currentUser = AppData.Context.User1.ToList().FirstOrDefault(p => p.userlogin == TBLogin.Text && p.userpassword == PBUserPasssword.Password);

                if (currentUser != null)
                {
                    switch (currentUser.id_roles)
                    {
                        case 1:
                            NavigationService.Navigate(new MenuAdminPage());
                            break;
                        case 2:
                            NavigationService.Navigate(new MenuApplicantPage());
                            break;
                        case 3:
                            NavigationService.Navigate(new MenuEmployersPage());
                            break;
                        default:
                            MessageBox.Show("Функционал не предусмотрен", "Error", MessageBoxButton.OK);

                            break;


                    }
                }
                else
                {
                    MessageBox.Show("Пользователь не найден", "Error", MessageBoxButton.OK);
                }
            }
            else
            {
                MessageBox.Show("Все поля обязательны для заполнения", "Error", MessageBoxButton.OK);
            }
        }

        private void NewsButton_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new NewsPage());
        }
    }
}
