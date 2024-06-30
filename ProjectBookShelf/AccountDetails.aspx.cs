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
    public partial class AccountDetails : System.Web.UI.Page
    {
        connectionclass obj = new connectionclass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            string ins = "insert into accounttab values(" + Session["userid"] + ",'" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "'," + TextBox5.Text + "," + TextBox6.Text + ",'active')";
            int i3 = obj.nonqueryfun(ins);
            if (i3 == 1)
            {
                Label1.Visible = true;
                Label1.Text = "Successfully enetered account details";



            }
            else
            {
                Label1.Visible = true;
                Label1.Text = "Invalid account details";
            }
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
           sr.ServiceClient obj1 = new sr.ServiceClient();
            string rate1 = "select total_amount from billtab where user_id=" + Session["userid"] + "";
            string cid = obj.scalarfun(rate1);
            int rate2 = Convert.ToInt32(cid);
            string acnum = "select acct_num from accounttab where user_id=" + Session["userid"] + "";
            string cid2 = obj.scalarfun(acnum);

            int b1 = obj1.checkbal(cid2);



            if (b1 > rate2)
            {
                int newp = b1 - rate2;


                string upac = "update accounttab set bal_amt=" + newp + " where user_id=" + Session["userid"] + "";
                int u = obj.nonqueryfun(upac);
                string upot = "update ordertab set order_status='paid' where user_id=" + Session["userid"] + "";
                int u2 = obj.nonqueryfun(upot);
                if (u2 == 1)
                {
                    string maxoid = "select count(order_id) from ordertab where user_id=" + Session["userid"] + "";
                    int m = Convert.ToInt32(obj.scalarfun(maxoid));
                    for (int i = 1; i <= m; i++)
                    {
                        int q = 0;
                        string ps = "";

                        string s6 = "select ordertab.quantity,producttab.product_stock from ordertab join " +
                            "producttab on ordertab.product_id=producttab.product_id where ordertab.order_status='paid'";
                        SqlDataReader dr = obj.datareaderfun(s6);
                        while (dr.Read())
                        {

                            q = Convert.ToInt32(dr["quantity"].ToString());


                            ps = dr["product_stock"].ToString();




                        }
                        int ps2 = Convert.ToInt32(ps);
                        int x = ps2 - q;
                        if (x > 0)
                        {

                            string y = x.ToString();

                            string uppro = "update producttab set product_stock='" + y + "'";
                            int upp = obj.nonqueryfun(upot);
                            if (upp == 1)
                            {
                                Label2.Visible = true;
                                Label2.Text = "Payment Successful, your product will be delivered soon";
                            }
                        }
                        else
                        {
                            Label3.Visible = true;
                            Label3.Text = "Out of Stock !! Couldn't pay";
                        }

                    }

                }
                else
                {
                    Label2.Visible = true;
                    Label2.Text = "Couldn't pay";
                }
            }




            else
            {
                Label2.Visible = true;
                Label2.Text = "Insufficient balance in your account!!";
                LinkButton1.Visible = true;
                
            }
        
    }

       
    }
}