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
    public partial class viewproductslist : System.Web.UI.Page
    {
        connectionclass obj = new connectionclass();
        protected void Page_Load(object sender, EventArgs e)

        {
          

    if (!IsPostBack)
            {
                
string sel = "select product_id,product_image,product_name,product_price,product_description from producttab where category_id=" + Session["uid"] + "";
                DataTable dt = obj.datatbfun(sel);
                DataList1.DataSource = dt;
                DataList1.DataBind();

            }
               
        }
        protected void ImageButton1_Command(object sender, CommandEventArgs e)
        {
            int getid2 = Convert.ToInt32(e.CommandArgument);

            Session["uid1"] = getid2;
            Response.Redirect("oneproductview.aspx");
        }
    }
}


//string s2 = "select product_id from producttab ";
 //string id2 = obj.scalarfun(s2);
 //Session["uid1"] = id2;


//string s2 = "select product_id from producttab ";
//string id2 = obj.scalarfun(s2);