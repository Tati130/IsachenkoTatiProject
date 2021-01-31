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
    /// Логика взаимодействия для NewsPage.xaml
    /// </summary>
    public partial class NewsPage : Page
    {
        private applicant currentUser;

        public NewsPage()
        {
            InitializeComponent();
            
          
        }


        

        private void BtnAdd_Click(object sender, RoutedEventArgs e)
        {
            if (TbFamilia.Text == "" || TbName.Text == "" || TbClientMiddlename.Text == "" || TbClientPass.Text == "")
            {
                MessageBox.Show("Заполните все обязательные поля", "Ошибка", MessageBoxButton.OK);
            }
            else { 
          
            currentUser = new applicant
            {
                fist_name = TbFamilia.Text,
                name = TbName.Text,
                middle_name = TbClientMiddlename.Text,
                date_of_bth = DPDateBirth.SelectedDate.Value,
                gender = CbGender.SelectedItem.ToString(),
                edication = TbClientEducation.Text,
                post = TbClientPost.Text,
                roles = TbClientRole.Text,
                login = TbClientLogin.Text,
                password = TbClientPass.Text



            };
                AppData.Context.applicant.Add(currentUser);
            MessageBox.Show("Пользователь успешно добавлен", "Сообщение", MessageBoxButton.OK);
                
            }
            AppData.Context.SaveChanges();
            NavigationService.GoBack();
            
        }
    }
}
