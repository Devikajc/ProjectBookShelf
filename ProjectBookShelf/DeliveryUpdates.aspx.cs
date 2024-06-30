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
    public partial class DeliveryUpdates : System.Web.UI.Page
    {
        connectionclass obj = new connectionclass();
        protected void Page_Load(object sender, EventArgs e)
        {
            gridbindfun();
        }

        protected void LinkButton1_Command(object sender, CommandEventArgs e)
        {
            int getid2 = Convert.ToInt32(e.CommandArgument);
            Session["lid"] = getid2;
            string uds = "update ordertab set order_status='delivered' where order_id=" + getid2 + "";
            int ul = obj.nonqueryfun(uds);
            if (ul > 0)
            {
               
                Label1.Visible = true;
                Label1.Text = "updated";
                gridbindfun();
            }
            else
            {
                Label1.Visible = true;
                Label1.Text = "Couldn't update";

            }

        }

        public void gridbindfun()
        {
            string s = "select * from ordertab where order_status='paid'";

            DataSet ds = obj.dataadaptfun(s);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
    }
}