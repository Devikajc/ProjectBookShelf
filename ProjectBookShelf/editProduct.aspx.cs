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
    public partial class editProduct : System.Web.UI.Page
    {
        connectionclass obj = new connectionclass();
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel1.Visible = true;
            if (!IsPostBack)
            {

                gridbindfn();
            }
        }

        public void gridbindfn()
        {
            string s = "select * from producttab";

            DataSet ds = obj.dataadaptfun(s);
            GridView1.DataSource = ds;
            GridView1.DataBind();

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

            TextBox productprice = (TextBox)GridView1.Rows[i].Cells[5].Controls[0];
            TextBox productdescrp = (TextBox)GridView1.Rows[i].Cells[6].Controls[0];
            TextBox productstock = (TextBox)GridView1.Rows[i].Cells[7].Controls[0];
            TextBox productstatus = (TextBox)GridView1.Rows[i].Cells[8].Controls[0];

            string stup = "update producttab set product_price='" + productprice.Text + "',product_description='" + productdescrp.Text + "',product_stock='"+productstock.Text+"',product_status='" + productstatus.Text + "' where product_id=" + getid + "";
            int i4 = obj.nonqueryfun(stup);

            GridView1.EditIndex = -1;
            gridbindfn();
        }
    }
}