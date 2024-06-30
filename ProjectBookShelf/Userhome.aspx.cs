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
    public partial class Userhome : System.Web.UI.Page
    {
        connectionclass obj = new connectionclass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string sel = "select category_id,category_image,category_name,category_description from categorytab";
                DataTable dt = obj.datatbfun(sel);
                DataList1.DataSource = dt;
                DataList1.DataBind();

            }
          
        }

        protected void ImageButton1_Command(object sender, CommandEventArgs e)
        {
            
            int getid = Convert.ToInt32(e.CommandArgument);
            Session["uid"] = getid;

            Response.Redirect("viewproductslist.aspx");

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("FeedbackPage.aspx");
        }

       
    }
}