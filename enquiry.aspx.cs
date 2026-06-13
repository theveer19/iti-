// using System;
// using System.Collections;
// using System.Configuration;
// using System.Data;
// using System.Web;
// using System.Web.Security;
// using System.Web.UI;
// using System.Web.UI.HtmlControls;
// using System.Web.UI.WebControls;
// using System.Web.UI.WebControls.WebParts;
// using System.Net.Mail;


// public partial class contact : System.Web.UI.Page
// {
//     protected void Page_Load(object sender, EventArgs e)
//     {
//         Label6.Visible = false;

//     }
//     protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
//     {
//         try
//         {
//             MailMessage msg = new MailMessage();
//             msg.From = new MailAddress("info@itiaffiliationconsultancy.com");
//             msg.To.Add("info@itiaffiliationconsultancy.com");
//             msg.Subject = "New Mail From ITI Website";
//             msg.Body = "Sender E-Mail ID--" + " " + TextBox3.Text + Server.HtmlDecode("&lt;br/&gt;") + "Sender Name--" + " " + TextBox1.Text + Server.HtmlDecode("&lt;br/&gt;") + "" + "Sender Phone No.--" + " " + TextBox2.Text + Server.HtmlDecode("&lt;br/&gt;") + " " + "Sender Message--" + " " + TextBox4.Text + Server.HtmlDecode("&lt;br/&gt;") + " " + "Sender District/State--" + " " + TextBox5.Text;
//             msg.IsBodyHtml = true;


//             SmtpClient smtp = new SmtpClient();

//             {
//                 smtp.Host = "webmail.itiaffiliationconsultancy.com";
//                // smtp.Port = 587;
//                  smtp.Port = 25;

//                // smtp.EnableSsl = true;
//                 smtp.DeliveryMethod = System.Net.Mail.SmtpDeliveryMethod.Network;
//                 System.Net.NetworkCredential credentials = new System.Net.NetworkCredential("info@itiaffiliationconsultancy.com", "@Gwalioriti123@#");;
//                 smtp.UseDefaultCredentials = false;
//                 smtp.Credentials = credentials;
//             }
//             smtp.Send(msg);
//             // Label7.Text = "Sent Successfully";
//             Response.Write("<script>alert('THANK YOU.. We will get back to you soon');</script>");
//             // Label7.Visible = true;
//             CompareValidator1.Visible = false;
//             TextBox1.Text = "";
//             TextBox2.Text = "";
//             TextBox3.Text = "";
//             TextBox4.Text = "";
//             TextBox5.Text = "";

//         }
//         catch (Exception ex)
//         {
//            // Label6.ForeColor = System.Drawing.Color.Red;
//             //Label6.Text = "Please Fill The Details Correctly ";
//             Response.Write("<script>alert('Enter All Details Properly');</script>");
//             //Label6.Visible = true;
//         //    CompareValidator1.Visible = false;
//         }
//     }
// }