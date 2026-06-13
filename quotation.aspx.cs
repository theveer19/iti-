using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Net.Mail;

public partial class quotation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            MailMessage msg = new MailMessage();
            msg.From = new MailAddress("withstechnosolutions@gmail.com");
            msg.To.Add("withstechnosolutions@gmail.com");
            msg.Bcc.Add("withstechnosolutions@gmail.com");
            msg.Subject = "Resume From Website";
            msg.Body = "Sender E-Mail ID--" + " " + TextBox2.Text + Server.HtmlDecode("&lt;br/&gt;") + "Sender Name--" + " " + TextBox1.Text + Server.HtmlDecode("&lt;br/&gt;") + "Message--" + " " + TextBox3.Text;
            msg.IsBodyHtml = true;
            if (this.FileUpload1.HasFile)
            {
                this.FileUpload1.SaveAs(Server.MapPath("upload/" + FileUpload1.FileName));
                msg.Attachments.Add(new Attachment(Server.MapPath("upload/" + FileUpload1.FileName)));
            }
            SmtpClient smtp = new SmtpClient();

            {
                smtp.Host = "webmail.withstechnosolutions.in";
               // smtp.Port = 587;
                smtp.Port = 25;

               // smtp.EnableSsl = true;
                smtp.DeliveryMethod = System.Net.Mail.SmtpDeliveryMethod.Network;
                System.Net.NetworkCredential credentials = new System.Net.NetworkCredential("withstechnosolutions@gmail.com", "@iti123@");
                smtp.UseDefaultCredentials = false;
                smtp.Credentials = credentials;
            }
            smtp.Send(msg);
            Response.Write("<script>alert('Your Resume Sent Successfully');</script>");
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";

        }
        catch (Exception ex)
        {
            // Label6.ForeColor = System.Drawing.Color.Red;
            // Label6.Text = "Please Fill The Details Correctly ";
            Response.Write("<script>alert('Enter Email Id in Proper Format');</script>");
            // Label6.Visible = true;
            // CompareValidator1.Visible = false;

        }
    }
}
