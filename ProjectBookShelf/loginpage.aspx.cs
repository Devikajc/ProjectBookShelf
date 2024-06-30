using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectBookShelf
{
    public partial class loginpage : System.Web.UI.Page
    {
        connectionclass obj3 = new connectionclass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string s1 = "select count(reg_id) from logtab where username='" + TextBox1.Text + "' and password='" + TextBox2.Text + "'";
            string cid = obj3.scalarfun(s1);
            int cid1 = Convert.ToInt32(cid);

            if (cid1 == 1)
            {
                string s2 = "select reg_id from logtab where username='" + TextBox1.Text + "' and password='" + TextBox2.Text + "'";
                string reg = obj3.scalarfun(s2);

                Session["userid"] = reg;


                string s3 = "select log_type from logtab where username='" + TextBox1.Text + "' and password='" + TextBox2.Text + "'";
                string log = obj3.scalarfun(s3);

                

                if (log == "admin")
                {
                    Response.Redirect("Adminhome.aspx");
                    Label1.Visible = true;
                    
                    Label1.Text = "Admin login successful";


                }

                else if (log == "user")
                {
                    string s4 = "select user_status from usertab where user_id=" + reg + "";
                    string check = obj3.scalarfun(s4);
                    if (check == "active")
                    {
                        Response.Redirect("Userhome.aspx");
                        Label1.Visible = true;
                        Label1.Text = "User Login Successful";
                    }
                    else if (check == "inactive") {
                        Label1.Visible = true;
                        Label1.Text = "Can't login! user is inactive";
                    }                   
                }
                else
                {
                    Label1.Visible = false;
                    
                }
            }
            else
            {
                Label1.Visible = true;
                Label1.Text = "Please register first";

            }

        }
    }
}