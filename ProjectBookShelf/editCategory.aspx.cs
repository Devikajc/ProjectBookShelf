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
    public partial class editCategory : System.Web.UI.Page
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
            string s = "select * from categorytab";

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

            TextBox categdescrp = (TextBox)GridView1.Rows[i].Cells[4].Controls[0];
            TextBox categstatus = (TextBox)GridView1.Rows[i].Cells[5].Controls[0];

            string stup = "update categorytab set category_description='" + categdescrp.Text + "',category_status='" + categstatus.Text + "' where category_id=" + getid + "";
            int i4 = obj.nonqueryfun(stup);
            
            GridView1.EditIndex = -1;
            gridbindfn();
        }

        
    }
}

//SqlCommand cmd = new SqlCommand(stup, con);
//con.Open();
//cmd.ExecuteNonQuery();
//con.Close();
