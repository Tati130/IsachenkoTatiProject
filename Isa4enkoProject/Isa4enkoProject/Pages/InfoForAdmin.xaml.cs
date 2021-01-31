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
    /// Логика взаимодействия для InfoForAdmin.xaml
    /// </summary>
    public partial class InfoForAdmin : Page
    {
        public InfoForAdmin()
        {
            InitializeComponent();
        }

        private void UpdateItems()
        {
            var allClients = AppData.Context.applicant.ToList();
            switch (ComboFilter.SelectedIndex)
            {
                case 0:
                    allClients = allClients.OrderBy(p => p.fist_name).ToList();
                    break;

                case 1:
                    allClients = allClients.OrderBy(p => p.name).ToList();
                    break;

                case 2:
                    allClients = allClients.OrderBy(p => p.middle_name).ToList();
                    break;

                case 3:
                    allClients = allClients.OrderBy(p => p.date_of_bth).ToList();
                    break;

                case 4:
                    allClients = allClients.OrderBy(p => p.gender).ToList();
                    break;

                case 5:
                    allClients = allClients.OrderBy(p => p.edication).ToList();
                    break;
                case 6:
                    allClients = allClients.OrderBy(p => p.post).ToList();
                    break;

                default:
                    allClients = allClients.OrderBy(p => p.id_applicant).ToList();
                    break;
            }
            if (DGridClients != null)
                DGridClients.ItemsSource = allClients;
        }
        private void TBoxSearch_TextChanged(object sender, TextChangedEventArgs e)
        {
            string keyWord = TBoxSearch.Text.ToLower();
            DGridClients.ItemsSource = AppData.Context.applicant.ToList()
                .Where(p => p.id_applicant.ToString().Contains(keyWord) ||
                p.fist_name.ToLower().Contains(keyWord) ||
                p.name.ToLower().Contains(keyWord) ||
                p.middle_name.ToLower().Contains(keyWord) ||
                //p.date_of_bth..Contains(keyWord) ||
                p.gender.ToLower().Contains(keyWord) ||
                p.edication.ToString().Contains(keyWord)).ToList();
        }

        private void ComboFilter_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            UpdateItems();
        }

        private void BtnExprt_Click(object sender, RoutedEventArgs e)
        {
           
            
        }

      

        private void butGraf_Click(object sender, RoutedEventArgs e)
        {
         
        }

        private void butPrint_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new PrintHTML());
        }
    }
    

}
