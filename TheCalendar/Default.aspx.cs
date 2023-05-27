using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TheCalendar
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnSubmit_Click(object sender, EventArgs e)
        {
            LblResult.Text = "Your Appointment is Schedule on : <br/> ";
            LblResult.Text += Calendar1.SelectedDate.ToLongDateString() +" <br/>";
            LblResult.Text += "Time :" + LstTime.Text;
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            LstTime.Items.Clear();

            switch(Calendar1.SelectedDate.DayOfWeek)
            {
                case DayOfWeek.Monday:
                    LstTime.Items.Add("10:00 AM");
                    LstTime.Items.Add("11:00 AM");
                    break;

                default:
                    LstTime.Items.Add("10:00 AM");
                    LstTime.Items.Add("11:00 AM");
                    LstTime.Items.Add("12:00 PM");
                    LstTime.Items.Add("01:00 PM");
                    LstTime.Items.Add("02:00 PM");
                    break;



            }
        }

        protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
        {
            if(e.Day.IsWeekend)
            {
                e.Day.IsSelectable = false;
            }
            if(e.Day.Date.Day == 5 && e.Day.Date.Month == 1)
            {
                e.Cell.BackColor = System.Drawing.Color.Green;
                Label Lbl = new Label();
                Lbl.Text = "<br/> My Birthday!";
                e.Cell.Controls.Add(Lbl);
            }
        }
    }
}