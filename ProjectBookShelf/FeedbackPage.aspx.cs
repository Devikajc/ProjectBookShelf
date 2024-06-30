using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace ProjectBookShelf
{
    public partial class FeedbackPage : System.Web.UI.Page
    {
        connectionclass obj = new connectionclass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string f="insert into feedbacktab values("+Session["userid"]+",'"+TextBox1.Text+"','','0')";
            int j = obj.nonqueryfun(f);
            //Response.Redirect("Userhome.aspx");
            if (j == 1)
            {
                Label1.Visible = true;
                Label1.Text = "Feedback Sent Successfully";
            }
            else
            {
                Label1.Visible = true;
                Label1.Text = "Feedback Sending Failed";
            }
           
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Userhome.aspx");
        }
    }
}