using CarManagementBO.Models;
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
using static CarManagementSolution.LoginWindow;

namespace CarManagementSolution
{
    /// <summary>
    /// Interaction logic for EvaluatorWindow.xaml
    /// </summary>
    public partial class EvaluatorWindow : Window
    {
        private readonly ICarInformationService carService = null;
        public EvaluatorWindow()
        {
            InitializeComponent();
            carService = new CarInformationService();
            dtg_Car.ItemsSource = carService.GetCars();
            cmb_Class.ItemsSource = carService.GetClasses();
            cmb_Class.DisplayMemberPath = "ClassType";
            cmb_Class.SelectedValuePath = "Id";

        }

        private void btn_Add_Click(object sender, RoutedEventArgs e)
        {
            var selectedRow = (CarInformation)dtg_Car.SelectedItem;
            CarInformation car = carService.GetCarById(selectedRow.Id);
            car.PriceForNormalDay = int.Parse(txt_NormalDay.Text);
            car.PriceForWeekend = int.Parse(txt_WeekendDay.Text);
            car.PriceForHoliday = int.Parse(txt_Holiday.Text);
            car.PricePerHour = int.Parse(txt_Hour.Text);
            car.PricePerKm = int.Parse(txt_Km.Text);
            car.CarStatus = 1;
            car.ClassId = cmb_Class.SelectedIndex;
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

        private void dtg_Car_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (dtg_Car.SelectedItem != null)
            {
                var car = (CarInformation)dtg_Car.SelectedItem;
                txt_NormalDay.Text = car.PriceForNormalDay.ToString();
                txt_WeekendDay.Text = car.PriceForWeekend.ToString();
                txt_Holiday.Text = car.PriceForHoliday.ToString();
                txt_Hour.Text = car.PricePerHour.ToString();
                txt_Km.Text = car.PricePerKm.ToString();
                cmb_Class.SelectedIndex = car.ClassId.GetValueOrDefault();
            }
        }

        private void btn_Close_Click(object sender, RoutedEventArgs e)
        {
            Session.Clear();
            this.Close();
        }
    }
}
