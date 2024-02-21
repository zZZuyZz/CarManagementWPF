using CarManagementBO.Models;
using CarManagementService;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.CompilerServices;
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
using static CarManagementSolution.LoginWindow;

namespace CarManagementSolution
{
    /// <summary>
    /// Interaction logic for AdminWindow.xaml
    /// </summary>
    public partial class AdminWindow : Window
    {
        private readonly IAccountService accountService = null;
        private IAccountRoleService accRoleService = null;
        public AdminWindow()
        {
            InitializeComponent();
            accRoleService = new AccountRoleService();
            accountService = new AccountService();
            dtg_Account.ItemsSource = accountService.GetAccounts();
            cmb_Role.ItemsSource = accRoleService.GetAccountRoles();
            cmb_Role.DisplayMemberPath = "RoleName";
            cmb_Role.SelectedValuePath = "Id"; 
        }

        private void btn_Close_Click(object sender, RoutedEventArgs e)
        {
            Session.Clear();
            this.Close();
        }

        private void btn_Add_Click(object sender, RoutedEventArgs e)
        {
            Account account = new Account();
            account.UserName = txt_Username.Text;
            account.Email = txt_Email.Text;
            account.Password = txt_Password.Text;
            account.Tel = txt_Tel.Text;
            account.Job = txt_Job.Text;
            account.CurrentAddress = txt_Currentaddress.Text;
            account.RoleId = cmb_Role.SelectedIndex;
            bool isSuccess = accountService.AddAccount(account);
            if (isSuccess == true)
            {
                MessageBox.Show("success");
            }
            else
            {
                MessageBox.Show("false");
            }
            dtg_Account.ItemsSource = accountService.GetAccounts();
        }

        private void dtg_Account_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (dtg_Account.SelectedItem != null)
            {
                var selectedRow = (Account)dtg_Account.SelectedItem;
                txt_Username.Text = selectedRow.UserName;
                txt_Email.Text = selectedRow.Email;
                txt_Password.Text = selectedRow.Password;
                txt_Tel.Text = selectedRow.Tel;
                txt_Job.Text = selectedRow.Job;
                txt_Currentaddress.Text = selectedRow.CurrentAddress;
                cmb_Role.SelectedIndex = selectedRow.RoleId;
            }
        }

        private void btn_Update_Click(object sender, RoutedEventArgs e)
        {
            var selectedRow = (Account)dtg_Account.SelectedItem;
            Account account = accountService.GetAccountById(selectedRow.Id);
            account.UserName = txt_Username.Text;
            account.Email = txt_Email.Text;
            account.Password = txt_Password.Text;
            account.Tel = txt_Tel.Text;
            account.Job = txt_Job.Text;
            account.CurrentAddress = txt_Currentaddress.Text;
            account.RoleId = cmb_Role.SelectedIndex;
            bool isSuccess = accountService.UpdateAccount(account);
            if (isSuccess == true)
            {
                MessageBox.Show("success");
            }
            else
            {
                MessageBox.Show("false");
            }
            dtg_Account.ItemsSource = accountService.GetAccounts();
        }

        private void btn_Delete_Click(object sender, RoutedEventArgs e)
        {
            var selectedRow = (Account)dtg_Account.SelectedItem;
            bool isSuccess = accountService.DeleteAccount(selectedRow.Id);
            if (isSuccess == true)
            {
                MessageBox.Show("success");
            }
            else
            {
                MessageBox.Show("false");
            }
            dtg_Account.ItemsSource = accountService.GetAccounts();

        }
    }
}
