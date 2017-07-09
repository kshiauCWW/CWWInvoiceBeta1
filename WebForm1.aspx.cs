using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace InvoiceBeta1
{
	public partial class WebForm1 : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

		

		protected void Button1_Click(object sender, EventArgs e)
		{
			Application["ClientCode"] = TextBox1.Text;
			Application["InvoiceNumber"] = TextBox2.Text;
			Application["AWBNumber"] = TextBox3.Text;
			Application["SendTo"] = TextBox4.Text;
			Application["CC"] = TextBox5.Text;
			Application["BCC"] = TextBox6.Text;
			Application["BodyTemplate"] = TextBox7.Text;
			
			Server.Transfer("WebForm2.aspx");
			
		}



		protected void TextBox1_TextChanged1(object sender, EventArgs e)
		{
			Application["ClientCode"] = TextBox1.Text;

		}

		protected void TextBox2_TextChanged(object sender, EventArgs e)
		{
			Application["InvoiceNumber"] = TextBox2.Text;
		}

		protected void TextBox3_TextChanged(object sender, EventArgs e)
		{
			Application["AWBNumber"] = TextBox3.Text;
		}

		protected void TextBox4_TextChanged(object sender, EventArgs e)
		{
			Application["SendTo"] = TextBox4.Text;
		}

		protected void TextBox5_TextChanged(object sender, EventArgs e)
		{
			Application["CC"] = TextBox5.Text;
		}

		protected void TextBox6_TextChanged(object sender, EventArgs e)
		{
			Application["BCC"] = TextBox6.Text;
		}

		protected void TextBox7_TextChanged(object sender, EventArgs e)
		{
			Application["BodyTemplate"] = TextBox7.Text;
		}

		protected void Button2_Click(object sender, EventArgs e)
		{
			TextBox1.Text = "";
			TextBox2.Text = "";
			TextBox3.Text = "";
			TextBox4.Text = "";
			TextBox5.Text = "";
			TextBox6.Text = "";
		}
	}
}