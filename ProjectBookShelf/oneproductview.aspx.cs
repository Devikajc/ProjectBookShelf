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
    public partial class oneproductview : System.Web.UI.Page
    {
        connectionclass obj8 = new connectionclass();
        protected void Page_Load(object sender, EventArgs e)
        {
           
            if (!IsPostBack)
            {
                string sel = "select product_image,product_name,product_description,product_price from producttab where product_id=" + Session["uid1"] + "";
                DataTable dt = obj8.datatbfun(sel);
                DataList1.DataSource = dt;
                DataList1.DataBind();

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //add to cart
            string sel = "select max(cart_id) from carttab";
            string rid = obj8.scalarfun(sel);
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
           int a = total_price();
            string s3 = "insert into carttab values(" + Rid + "," + Session["userid"] + "," + Session["uid1"] + "," + TextBox1.Text + ", " + a + ")";


            int i3 =obj8.nonqueryfun(s3);
            if (i3 > 0)
            {
                Response.Redirect("viewcart.aspx");
            }
            
           
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            //continue button
            Response.Redirect("Userhome.aspx");
        }

        public int total_price()
        {
            string s2 = "select product_price from producttab where product_id=" + Session["uid1"] + "";
            string cid = obj8.scalarfun(s2);
            string t = cid.Remove(3);
            int cid1 = Convert.ToInt32(t);
            string tb = TextBox1.Text;
            int price = Convert.ToInt32(tb);
            int tp = cid1 * price;
            return tp;

        }
    }
}