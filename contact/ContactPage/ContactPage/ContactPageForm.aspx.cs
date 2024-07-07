using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ContactPage
{
    public partial class ContactPageForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        //protected void Submit_Click(object sender, EventArgs e)
        //{
        //    string name = Request.Form["name"];
        //    string email = Request.Form["email"];
        //    string feedback = Request.Form["feedback"];


        //    try
        //    {
        //        MailMessage mail = new MailMessage();
        //        SmtpClient smtpServer = new SmtpClient("smtp.gmail.com");

        //        mail.From = new MailAddress("hadeelzoubi12@gmail.com");
        //        mail.To.Add("hadeelzoubi12@gmail.com");
        //        mail.Subject = "New Feedback from Website";
        //        mail.Body = $"Name: {name}\nEmail: {email}\nFeedback: {feedback}";

        //        smtpServer.Port = 587; // أو 465 أو 25 حسب مزود الخدمة
        //        smtpServer.Credentials = new NetworkCredential("hadeelzoubi12@gmail.com", "Hadeel1997*");
        //        smtpServer.EnableSsl = true;

        //        smtpServer.Send(mail);
        //    }
        //    catch (Exception ex)
        //    {
        //        // معالجة الخطأ
        //        Response.Write(ex.ToString());
        //    }
        //}
    }
}