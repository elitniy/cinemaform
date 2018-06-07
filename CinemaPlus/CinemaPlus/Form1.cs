using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;
using System.IO;
using CinemaPlus.Models;

namespace CinemaPlus
{
    public partial class Form1 : Form
    {
        CinemaPlusDBEntities db = new CinemaPlusDBEntities();
        //private SqlConnection con = new SqlConnection(Properties.Settings.Default.Connection);

        public Form1()
        {
            InitializeComponent();
            DownlPosters();

            MessageBox.Show(dtPicker.Value.Date.ToString());

        }

        private void DownlPosters()
        {
            foreach (var item in db.Posters.ToList())
            {
                dgvPosters.Rows.Add(
                     item.Film.name,
                     item.Hall.name,
                     item.time.ToString(),
                     item.premiereDate
                    );   
            }
        }
        private void ViewPosts(object sender, EventArgs e)
        {
            foreach (var item in db.Posters.ToList())
            {
                if (dtPicker.Value == item.premiereDate)
                {
                    dgvPosters.Rows.Clear();
                    dgvPosters.Rows.Add(
                     item.Film.name,
                     item.Hall.name,
                     item.time.ToString(),
                     item.price
                    );
                }
            }
        }
    }
}
