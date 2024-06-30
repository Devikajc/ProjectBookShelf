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
    public partial class addProduct : System.Web.UI.Page
    {
        connectionclass obj = new connectionclass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string s = "select * from categorytab ";
                SqlDataReader dr = obj.datareaderfun(s);
               
                DataSet ds = obj.dataadaptfun(s);

              
                DropDownList1.DataSource = ds;
                DropDownList1.DataTextField = "category_name";
                DropDownList1.DataValueField = "category_id";
                DropDownList1.DataBind();
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string p = "~/photos/" +FileUpload1.FileName;
            FileUpload1.SaveAs(MapPath(p));
            string str = "insert into producttab values(" + DropDownList1.SelectedItem.Value + ",'" + TextBox1.Text + "','" + p + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + DropDownList2.SelectedItem.Text + "')";
            int i = obj.nonqueryfun(str);
            if (i == 1)
            {
                Label1.Visible = true;
                Label1.Text = "Product added successfully";


            }
            else 
            {

                Label1.Visible = false;
            }
            
        }

       
    }
}