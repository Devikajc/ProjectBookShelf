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
    public partial class ViewBill : System.Web.UI.Page
    {
        connectionclass obj = new connectionclass();
        protected void Page_Load(object sender, EventArgs e)
        {
            string s = "select billtab.bill_id,billtab.total_amount,usertab.user_name,usertab.user_address,usertab.user_phone,usertab.pincode,ordertab.date,ordertab.order_status from billtab join ordertab on billtab.user_id=ordertab.user_id join usertab on billtab.user_id=usertab.user_id where billtab.user_id="+Session["userid"]+"";
            SqlDataReader dr = obj.datareaderfun(s);
            while (dr.Read())
            {
              
                Label2.Text =dr["bill_id"].ToString();

                Label3.Text = dr["user_name"].ToString();
                Label4.Text = dr["user_address"].ToString();
                Label5.Text = dr["user_phone"].ToString();
                Label6.Text = dr["pincode"].ToString();
                Label7.Text = Convert.ToDateTime(dr["date"]).ToShortDateString();
                Label8.Text = dr["order_status"].ToString();
                Label10.Text= dr["total_amount"].ToString();

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string s2 = "select order_status from ordertab where user_id=" + Session["userid"] + "";
            string cid = obj.scalarfun(s2);
            string cou = "select count(acct_id) from accounttab where user_id=" + Session["userid"] + "";
            string cid2 = obj.scalarfun(cou);
            if (cid == "ordered" && cid2 == "1")
            {
                Response.Redirect("Payment.aspx");
            }
            else if (cid == "ordered" && cid2 == "0")
            {
                
                Response.Redirect("AccountDetails.aspx");
            }
            else if (cid == "paid" && cid2 =="1" )
            {
                
                Label9.Visible = true;
                Label9.Text = "Your product is purchased, continue shopping";

               
            }
            else if (cid == "delivered" && cid2 == "1")
            {
                Label9.Visible = true;
                Label9.Text = "Order Delivered, Continue Shopping";
            }

            
            else
            {
               
                Label9.Visible = true;
                Label9.Text = "Not ordered or payment has already done";
            }
        }
    }
}