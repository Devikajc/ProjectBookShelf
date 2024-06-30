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
    public partial class Adminhome : System.Web.UI.Page
    {
        connectionclass obj = new connectionclass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
            gridbindfn();
        }
        public void gridbindfn()
        {
            string s = "select * from usertab";

            DataSet ds = obj.dataadaptfun(s);
            GridView1.DataSource = ds;
            GridView1.DataBind();

        }

        protected void LinkButton5_Command(object sender, CommandEventArgs e)
        {
            int getid = Convert.ToInt32(e.CommandArgument);
            
            string upd1 = "update usertab set user_status='inactive' where user_id=" + getid + "";
            
            int u = obj.nonqueryfun(upd1);
            gridbindfn();

            string upd2 = "update logtab set status='inactive' where reg_id=" + getid + "";
            int u2 = obj.nonqueryfun(upd2);
           

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("ReviewFeedback.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("DeliveryUpdates.aspx");
        }
    }
}