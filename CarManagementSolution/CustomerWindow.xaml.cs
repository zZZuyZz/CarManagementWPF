using CarManagementBO.Models;
using CarManagementService;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.ConstrainedExecution;
using System.Security.Principal;
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
    /// Interaction logic for CustomerWindow.xaml
    /// </summary>
    public partial class CustomerWindow : Window
    {    
        private readonly ICarInformationService carService = null;

        public CustomerWindow()
        {
            InitializeComponent();
            carService = new CarInformationService();
            dtg_Car.ItemsSource = carService.GetCars();
            cmb_Brand.ItemsSource = carService.GetBrands();
            cmb_Brand.DisplayMemberPath = "BrandName";
            cmb_Brand.SelectedValuePath = "Id";

        }

        private void btn_Add_Click(object sender, RoutedEventArgs e)
        {
            CarInformation car = new CarInformation();
            car.YearCreate = int.Parse(txt_Year.Text);
            car.CarColor =  txt_Color.Text;
            car.SeatNumber = int.Parse(txt_SeatNumber.Text);
            car.BrandId = cmb_Brand.SelectedIndex;
            car.CarDescription = txt_Description.Text;
            car.OwnerId = Session.UserId;
            bool isSuccess = carService.AddCar(car);
            if (isSuccess == true)
            {
                MessageBox.Show("success");
            }
            else
            {
                MessageBox.Show("false");
            }
            dtg_Car.ItemsSource = carService.GetCars();

        }

        private void btn_Update_Click(object sender, RoutedEventArgs e)
        {
            var selectedRow = (CarInformation)dtg_Car.SelectedItem;
            CarInformation car = carService.GetCarById(selectedRow.Id);
            car.YearCreate = int.Parse(txt_Year.Text);
            car.CarColor = txt_Color.Text;
            car.SeatNumber = int.Parse(txt_SeatNumber.Text);
            car.BrandId = cmb_Brand.SelectedIndex;
            car.CarDescription = txt_Description.Text;
            bool isSuccess = carService.UpdateCar(car);
            if (isSuccess == true)
            {
                MessageBox.Show("success");
            }
            else
            {
                MessageBox.Show("false");
            }
            dtg_Car.ItemsSource = carService.GetCars();

        }

        private void btn_Delete_Click(object sender, RoutedEventArgs e)
        {
            var selectedRow = (CarInformation)dtg_Car.SelectedItem;
            bool isSuccess = carService.DeleteCar(selectedRow.Id);
            if (isSuccess == true)
            {
                MessageBox.Show("success");
            }
            else
            {
                MessageBox.Show("false");
            }
            dtg_Car.ItemsSource = carService.GetCars();
        }

        private void btn_Close_Click(object sender, RoutedEventArgs e)
        {
            Session.Clear();
            this.Close();
        }

        private void dtg_Car_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (dtg_Car.SelectedItem != null)
            {
                var car = (CarInformation)dtg_Car.SelectedItem;
                txt_Year.Text = car.YearCreate.ToString();
                txt_Color.Text = car.CarColor.ToString();
                txt_SeatNumber.Text = car.SeatNumber.ToString();
                txt_Description.Text = car.CarDescription;
                cmb_Brand.SelectedIndex = car.BrandId.GetValueOrDefault();
            }
        }
    }
}
