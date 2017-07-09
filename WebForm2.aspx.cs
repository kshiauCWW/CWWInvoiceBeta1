using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Windows;
using System.Net.Mail;
using System.Net.Mime;

namespace InvoiceBeta1
{
	

	public partial class WebForm2 :  System.Web.UI.Page
	{

		protected void Page_Load(object sender, EventArgs e)
		{
			
			TextBox1.Text = Application["ClientCode"].ToString();
			TextBox2.Text = Application["InvoiceNumber"].ToString();
			TextBox3.Text = Application["AWBNumber"].ToString();
			TextBox4.Text = Application["SendTo"].ToString();
			TextBox5.Text = Application["CC"].ToString();
			TextBox6.Text = Application["BCC"].ToString();
			TextBox7.Text = Application["BodyTemplate"].ToString();
			
		}


		protected void Button1_Click(object sender, EventArgs e)
		{
			MessageBox.Show("Please wait a moment while your invoice is sent!");

			SqlConnection conn = new SqlConnection(@"Data Source=UAT-DC01-SQL03.cranewwl.internal;Initial Catalog=WinAutomation_Bot_Records;Integrated Security=True");
			SqlCommand insert = new SqlCommand("insert into Invoice_sent(Client_code, Invoice_number, AWB_number, Billing_Packet_attached, Client_email, CC, BCC, Body_template, EmpID, Timestamp) values(@Client_code, @Invoice_number, @AWB_number, @Billing_Packet_attached, @Client_email, @CC, @BCC, @Body_template, @EmpID, @Timestamp)", conn);
			insert.Parameters.AddWithValue("@Client_code", TextBox1.Text);
			insert.Parameters.AddWithValue("@Invoice_number", TextBox2.Text);
			insert.Parameters.AddWithValue("@AWB_number", TextBox3.Text);
			insert.Parameters.AddWithValue("@Billing_Packet_attached", FileUpload1.FileName);
			insert.Parameters.AddWithValue("@Client_email", TextBox4.Text);
			insert.Parameters.AddWithValue("@CC", TextBox5.Text);
			insert.Parameters.AddWithValue("@BCC", TextBox6.Text);
			insert.Parameters.AddWithValue("@Body_template", TextBox7.Text);
			insert.Parameters.AddWithValue("@EmpID", TextBox3.Text);
			insert.Parameters.AddWithValue("@Timestamp", DateTime.Now);

			try
			{
				conn.Open();
				insert.ExecuteNonQuery();

			}
			catch (Exception)
			{
			}
			conn.Close();


			string _From = "user@craneww.com";
			string _To = TextBox4.Text.Trim();
			string _CC = TextBox5.Text.Trim();
			string _BCC = TextBox6.Text.Trim();
			string _Subject = "Crane WorldWide Invoice" + TextBox1.Text + TextBox2.Text + TextBox3.Text;
			string _Body = TextBox7.Text;

			SendMailMessage(_From, _To, _CC, _BCC, _Subject, _Body, true);



			Session.Clear();

			Server.Transfer("WebForm1.aspx");

		}

		private static void SendMailMessage(string From, string To, string CC, string BCC, string Subject, string Body, bool IsHTML)
			{

				MailMessage tMailMessage = new MailMessage();
				tMailMessage.From = new MailAddress(From);
				tMailMessage.To.Add(new MailAddress(To));
				if (CC != null && CC != "")
					tMailMessage.CC.Add(new MailAddress(CC));
				if (BCC != null && BCC != "")
					tMailMessage.Bcc.Add(new MailAddress(BCC));
				tMailMessage.Subject = Subject;
				tMailMessage.Body = Body;
				
				//code for attachment in email
				System.Net.Mail.Attachment attachment;
				attachment = new System.Net.Mail.Attachment("c:/invoice.pdf");
				tMailMessage.Attachments.Add(attachment);

				tMailMessage.IsBodyHtml = IsHTML;
				tMailMessage.Priority = MailPriority.Normal;
				tMailMessage.SubjectEncoding = System.Text.Encoding.UTF32;
				tMailMessage.BodyEncoding = System.Text.Encoding.UTF32;

			

			SmtpClient tsmtpClient = new SmtpClient("smtp.craneww.com", 25);
				tsmtpClient.EnableSsl = true;
				tsmtpClient.DeliveryMethod = SmtpDeliveryMethod.Network;
				tsmtpClient.UseDefaultCredentials = false;
				tsmtpClient.Credentials = new System.Net.NetworkCredential("user@craneww.com", "***********");
				tsmtpClient.Send(tMailMessage);
			}

		protected void Button2_Click(object sender, EventArgs e)
		{
			MessageBox.Show("Please wait a moment while we redirect you...");
			Server.Transfer("WebForm1.aspx");
		}

		
	} }
		
	