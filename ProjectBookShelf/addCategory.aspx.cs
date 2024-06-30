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
    public partial class addCategory : System.Web.UI.Page
    {
        connectionclass obj = new connectionclass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string p = "~/photos/" + FileUpload1.FileName;
            FileUpload1.SaveAs(MapPath(p));
            string str = "insert into categorytab values('" + TextBox1.Text + "','" + p + "','" + TextBox2.Text + "','" + DropDownList1.Text + "')";
            int i = obj.nonqueryfun(str);
            if (i == 1)
            {
                Label1.Visible = true;
                Label1.Text = "CATEGORY ADDED SUCCESSFULLY";
            }
            else
            {
                Label1.Visible = false;
            }
        }

        
    }
}