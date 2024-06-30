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
    public partial class ViewCart : System.Web.UI.Page
    {
        connectionclass obj = new connectionclass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                gridbindfn();
                int y = countofcart();
                int z = countoforder();
                if (y > 0)
                {
                    gridbindfn();
                    Button1.Visible = true;
                }
                else if (z > 0)
                {
                    gridbindfn();
                    LinkButton1.Visible = true;
                    //Button1.Visible = true;
                }
                else if (y > 0 && z > 0)
                {
                    gridbindfn();
                    LinkButton1.Visible = true;
                }
                else
                {
                    gridbindfn();
                    Label1.Visible = true;

                    Label1.Text = " Your Cart may be Empty, Start your Shopping!";
                    LinkButton1.Visible = false;
                    LinkButton3.Visible = true;


                      } 


                    //}
                }
        }
        public void gridbindfn()
        {
            string s = "select * from carttab";

            DataSet ds = obj.dataadaptfun(s);
            GridView1.DataSource = ds;
            GridView1.DataBind();

        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int i = e.RowIndex;
            int getid = Convert.ToInt32(GridView1.DataKeys[i].Value);
            string del = "delete from carttab where cart_id=" + getid + "";
            int i4 = obj.nonqueryfun(del);
            gridbindfn();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            gridbindfn();
        }
        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            gridbindfn();
        }
        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int i = e.RowIndex;
            int getid = Convert.ToInt32(GridView1.DataKeys[i].Value);

            TextBox quant = (TextBox)GridView1.Rows[i].Cells[5].Controls[0];
            int a = total_price();
            string tb = quant.Text;
            int qua = Convert.ToInt32(tb);
            int newprice = a * qua;

            string stup1 = "update carttab set quantity=" + quant.Text + ",total_price=" + newprice + " where cart_id=" + getid + "";
            int i4 = obj.nonqueryfun(stup1);

            GridView1.EditIndex = -1;
            gridbindfn();
        }

        public int total_price()
        {
            string s2 = "select product_price from producttab where product_id=" + Session["uid1"] + "";
            string cid = obj.scalarfun(s2);
            string t = cid.Remove(3);
            int cid1 = Convert.ToInt32(t);
            return cid1;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string maxid= "select max(cart_id) from carttab where user_id="+Session["userid"]+"";
            int m=Convert.ToInt32(obj.scalarfun(maxid));
            string dt = Convert.ToDateTime(DateTime.Now.ToShortDateString()).ToString("yyyy-MM-dd");
            for (int i=1;i<=m;i++)
            {
                
                
                int uid = 0;
                int pid = 0;
                int q = 0;
                int p = 0;


                //string os = "";
                string str = "select * from carttab where cart_id=" + i + "";
                SqlDataReader dr = obj.datareaderfun(str);
                while (dr.Read())
                {
                    //oid =Convert.ToInt32( dr["order_id"].ToString()) ;
                    //d = Convert.ToInt32(dr["date"].ToString());


                    uid = Convert.ToInt32(dr["user_id"].ToString()) ;
                    pid = Convert.ToInt32(dr["product_id"].ToString()) ;
                    q = Convert.ToInt32(dr["quantity"].ToString()) ;
                    p = Convert.ToInt32(dr["total_price"].ToString()) ;
                    
                    //os = dr["order_status"].ToString();

                }
                string str2 = "insert into ordertab values(" + uid + "," + pid + "," + q + "," + p + ",'" + dt + "','ordered')";
                int j = obj.nonqueryfun(str2);
                if (j == 1)
                {
                    string str3 = "delete from carttab where cart_id=" + i + "";
                    int j2 = obj.nonqueryfun(str3);
                }
                
            }

            string s = "select sum(price) from ordertab where user_id=" + Session["userid"] + "";
            string k = obj.scalarfun(s);
            int o = Convert.ToInt32(k);
            
            string str4 = "insert into billtab values('" +  dt+ "'," + Session["userid"] + "," + o + ")";
            int h = obj.nonqueryfun(str4);
            if (h == 1)
            {
                Response.Redirect("ViewBill.aspx");
            }
        }

        public int countofcart()
        {
            string cid = "select count(cart_id) from carttab where user_id=" + Session["userid"] + "";
            int m = Convert.ToInt32(obj.scalarfun(cid));
            return m;
        }
        public int countoforder()
        {
            string cid3 = "select count(order_id) from ordertab where user_id=" + Session["userid"] + "";
            int m3 = Convert.ToInt32(obj.scalarfun(cid3));
            return m3;
        }
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            string a = "select order_status from ordertab where user_id=" + Session["userid"] + "";
            string m = obj.scalarfun(a);

            Label2.Visible = true;
            Label1.Visible = false;
            Label2.Text = m;
            if (m == "ordered")
            {
                LinkButton2.Visible = true;
            }
            else if (m == "paid")
            {
                Label3.Visible = true;
                Label3.Text = "You have succesfully done your payment , your product will reach soon!!";
                LinkButton3.Visible = true;
            }
            else if (m == "delivered")
            {
                
                Label3.Visible = true;
                Label3.Text = "Your Product Delivered!! Happy Shopping!!";
                LinkButton3.Visible = true;


            }
            else if (m == "")
            {
                LinkButton2.Visible = false;
                Label3.Visible = true;
                Label3.Text = "Couldn't find your order, Start Your Shopping Now!!";
            }
            else
            {
                Label3.Visible = true;
                Label3.Text = "Couldn't find your order, Start Your Shopping Now!!";
            }

        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewBill.aspx");
        }
    }
}