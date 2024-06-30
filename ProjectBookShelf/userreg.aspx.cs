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
    public partial class userreg : System.Web.UI.Page
    {
        connectionclass obj2 = new connectionclass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string s = "select * from statetab ";
                DataSet ds = obj2.dataadaptfun(s);
                DropDownList1.DataSource = ds;
                DropDownList1.DataTextField = "statename";
                DropDownList1.DataValueField = "stateid";
                DropDownList1.DataBind();
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string sel = "select max(login_id) from logtab";
            string rid = obj2.scalarfun(sel);
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


            string ins = "insert into usertab values(" + Rid + ",'" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "'," + TextBox6.Text + ",'" + TextBox7.Text + "','" + DropDownList2.SelectedItem.Text + "','" + DropDownList1.SelectedItem.Text + "',"+TextBox8.Text+",'active')";
            int i = obj2.nonqueryfun(ins);

            if (i == 1)
            {
                string s2 = "insert into logtab values(" + Rid + ",'" + TextBox9.Text + "','" + TextBox10.Text + "','user','active')";
                int j = obj2.nonqueryfun(s2);
                Response.Redirect("Userhome.aspx");
                Label2.Visible = true;
                Label2.Text = "User Registered Successfully";

            }
            else
            {
                Label2.Visible = false;
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string s3 = "select districtid,districtname from disttab where stateid=" + DropDownList1.SelectedItem.Value + "";
            DataSet ds = obj2.dataadaptfun(s3);

            //da.Fill(ds);
            DropDownList2.DataSource = ds;
            DropDownList2.DataTextField = "districtname";
            DropDownList2.DataValueField = "districtid";
            DropDownList2.DataBind();
        }

        
    }
}


