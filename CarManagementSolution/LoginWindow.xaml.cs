using CarManagementService;
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

namespace CarManagementSolution
{
    /// <summary>
    /// Interaction logic for LoginWindow.xaml
    /// </summary>
    public partial class LoginWindow : Window
    {
        private readonly IAccountService accountService = null;
        public LoginWindow()
        {
            InitializeComponent();
            accountService = new AccountService();
        }
        public static class Session
        {
            public static int UserId { get; set; }

            public static void Clear()
            {
                UserId = 0;
            }
        }
        private void Button_Click(object sender, RoutedEventArgs e)
        {
            string username = txt_Email.Text;
            string password = txt_Password.Text;
            var accountRole = accountService.GetRole(username, password);
            var accountId = accountService.GetRole(username, password).Id;
            Session.UserId = accountId;
            if (accountRole.RoleId == 1)
            {
                this.Hide();               
                AdminWindow adminForm = new AdminWindow();
                adminForm.Show();
            }
            else if(accountRole.RoleId == 3)
            {
                this.Hide();

                EvaluatorWindow evaluatorForm = new EvaluatorWindow();
                evaluatorForm.Show();
            }
            else if(accountRole.RoleId == 2)
            {
                this.Hide();

                CustomerWindow customerForm = new CustomerWindow();
                customerForm.Show();
            }
            else
            {
                Session.Clear();
                MessageBox.Show("Invalid username or password. Please try again.");
            }
        }
    }
}
