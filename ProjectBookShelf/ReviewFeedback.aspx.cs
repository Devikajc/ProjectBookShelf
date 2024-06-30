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
    public partial class ReviewFeedback : System.Web.UI.Page
    {
        connectionclass obj = new connectionclass();
        protected void Page_Load(object sender, EventArgs e)
        {
            gridbindfun();
        }
        public void gridbindfun()
        {
            string s = "select feedbacktab.user_id,feedbacktab.feedback_msg,usertab.user_name,usertab.user_email from feedbacktab join usertab on feedbacktab.user_id=usertab.user_id where feedback_status='0'";
            
            DataSet ds = obj.dataadaptfun(s);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void LinkButton1_Command(object sender, CommandEventArgs e)
        {
            int getid = Convert.ToInt32(e.CommandArgument);
            Session["linkid"] = getid;
            Response.Redirect("sendfeedback.aspx");
        }
    }
}