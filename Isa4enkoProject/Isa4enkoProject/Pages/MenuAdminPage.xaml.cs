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
    /// Логика взаимодействия для MenuAdminPage.xaml
    /// </summary>
    public partial class MenuAdminPage : Page
    {
        public MenuAdminPage()
        {
            InitializeComponent();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new InfoForAdmin());
        }

        private void BtnVac_Click(object sender, RoutedEventArgs e)
        {

        }

        private void BtnEmpl_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new EmployerInfo());
        }

        private void BtnApp_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new InfoForAdmin());
        }
    }
}
