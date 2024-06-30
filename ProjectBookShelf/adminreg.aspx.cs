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
    public partial class adminreg : System.Web.UI.Page
    {
        connectionclass obj1 = new connectionclass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string sel = "select max(login_id) from logtab";
            string rid = obj1.scalarfun(sel);
            int Rid = 0;
            if (rid == "")
            {
                Rid = 1;

            }
            else
            {
                int newregid = Convert.ToInt32(rid);
                Rid = newregid + 1;

            }

            string str1 = "insert into admintab values(" + Rid + ",'" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "'," + TextBox6.Text + ")";
            int i3 = obj1.nonqueryfun(str1);
            if (i3 == 1)
            {
                string s2 = "insert into logtab values(" + Rid + ",'" + TextBox7.Text + "','" + TextBox8.Text + "','admin','active')";
                int i2 = obj1.nonqueryfun(s2);
                Response.Redirect("Adminhome.aspx");
                Label2.Visible = true;
                Label2.Text = "Admin Registered Successfully";
            }
            else 
            {
                Label2.Visible = false;
            }
        }

        protected void TextBox7_TextChanged(object sender, EventArgs e)
        {
            string s3 = "select  count(log_id) from logtab where username='" + TextBox7.Text + "'";
            string cid = obj1.scalarfun(s3);
            int id1 = Convert.ToInt32(cid);
            if (id1 == 1)
            {
                Label3.Visible = true;
                Label3.Text = "Please choose another username";
            }
            else
            {
                Label3.Visible = false;
            }
        }

    }
}