using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;
using System.IO;
using System.Text;
using System.Data;
using System.Data.SqlClient;


namespace ProjectBookShelf
{
    
    public partial class sendfeedback : System.Web.UI.Page
    {
        connectionclass obj = new connectionclass();
        protected void Page_Load(object sender, EventArgs e)
        {

           
            string sel = "select usertab.user_id,usertab.user_email,usertab.user_name,feedbacktab.feedback_status from feedbacktab join usertab on feedbacktab.user_id=usertab.user_id where feedback_status='0' ";
            SqlDataReader dr = obj.datareaderfun(sel);
            while (dr.Read())
            {

                int uid = Convert.ToInt32(dr["user_id"].ToString());

                Label1.Text = dr["user_email"].ToString();
                Label3.Text = dr["user_name"].ToString();

            }

        }

     
        public static void SendEmail2(string yourName, string yourGmailUserName, string yourGmailPassword, string toName, string toEmail, string subject, string body)
        {
            
            //string nme = yourName;
            string to = toEmail; //To address    
            string from = yourGmailUserName; //From address    
            MailMessage message = new MailMessage(from, to);

            string mailbody = body;
            message.Subject = subject;
            message.Body = mailbody;
            message.BodyEncoding = Encoding.UTF8;
            message.IsBodyHtml = true;
            SmtpClient client = new SmtpClient("smtp.gmail.com", 587); //Gmail smtp    
            System.Net.NetworkCredential basicCredential1 = new
            System.Net.NetworkCredential(yourGmailUserName, yourGmailPassword);
            client.EnableSsl = true;
            client.UseDefaultCredentials = true;
            client.Credentials = basicCredential1;
            try
            {
                client.Send(message);
            }

            catch (Exception ex)
            {
                throw ex;
            }
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            
            
            SendEmail2("Bookshelf", "bookshelfshop2024@gmail.com", "jtvi ymho ggeq naoj", Label3.Text,Label1.Text, TextBox2.Text, TextBox3.Text);
            string upfb = "update feedbacktab set reply_msg='" + TextBox4.Text + "',feedback_status='1' where user_id=" + Session["linkid"] + " ";
            int ul = obj.nonqueryfun(upfb);
            if (ul > 0)
            {
                Label2.Visible = true;
                Label2.Text = "Reply sending Successful";
            }
            else {
                Label2.Visible = true;
                Label2.Text = "Reply sending unsuucessful";

            }
        }
    }
}

    
