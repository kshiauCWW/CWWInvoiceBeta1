<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="InvoiceBeta1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
			<img src="http://r1.aviationpros.com/files/base/image/CAVC/2013/06/16x9/1280x720/crane-ww-logo2_10956785.jpg" alt="logo" style="width:375px;height:228px;">
        </div>
    	<br />
		<asp:Label ID="Label10" runat="server" Text="Invoice Information" Font-Bold="True" Font-Names="Microsoft Sans Serif" Font-Size="X-Large" ForeColor="#002251"></asp:Label>
		<br />
		<br />
		<asp:Label ID="Label20" runat="server" Font-Italic="True" Font-Names="Microsoft Sans Serif" Font-Size="Medium" ForeColor="#FF0066" Text="* Required Field"></asp:Label>
		<br />
		<br />
		<asp:Label ID="Label1" runat="server" Text="Client Code #" Font-Names="Microsoft Sans Serif" Font-Size="Large" ForeColor="#002251"></asp:Label>
&nbsp;&nbsp;&nbsp;<asp:Label ID="Label21" runat="server" ForeColor="#FF0066" Text="*"></asp:Label>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
		<asp:TextBox ID="TextBox1" runat="server" Width="370px" OnTextChanged="TextBox1_TextChanged1"></asp:TextBox>
		&nbsp;<asp:Label ID="Label11" runat="server" ForeColor="#002251" Text="?" ToolTip="Enter the Client Code"></asp:Label>
		<br />
		<br />
		<asp:Label ID="Label2" runat="server" Text="Invoice #" Font-Names="Microsoft Sans Serif" Font-Size="Large" ForeColor="#002251"></asp:Label>
&nbsp;&nbsp;&nbsp;<asp:Label ID="Label22" runat="server" ForeColor="#FF0066" Text="*"></asp:Label>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
		<asp:TextBox ID="TextBox2" runat="server" Width="370px" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
		&nbsp;<asp:Label ID="Label12" runat="server" ForeColor="#002251" Text="?" ToolTip="Enter the Invoice Number "></asp:Label>
		<br />
		<br />
		<asp:Label ID="Label3" runat="server" Text="AWB or BL #" Font-Names="Microsoft Sans Serif" Font-Size="Large" ForeColor="#002251"></asp:Label>
&nbsp;&nbsp;&nbsp;<asp:Label ID="Label23" runat="server" ForeColor="#FF0066" Text="*"></asp:Label>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
		<asp:TextBox ID="TextBox3" runat="server" Width="370px" OnTextChanged="TextBox3_TextChanged"></asp:TextBox>
		&nbsp;<asp:Label ID="Label13" runat="server" ForeColor="#002251" Text="?" ToolTip="Enter the AWB or BL number that corresponds to the order"></asp:Label>
		<br />
		<br />
		<asp:Label ID="Label4" runat="server" Text="Billing Packet" Font-Names="Microsoft Sans Serif" Font-Size="Large" ForeColor="#002251"></asp:Label>
		&nbsp;&nbsp;&nbsp;<asp:Label ID="Label24" runat="server" ForeColor="#FF0066" Text="*"></asp:Label>
		&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
		<asp:FileUpload ID="FileUpload1" type="file" runat="server" AllowMultiple="True" Height="80px" Width="370px" />
		&nbsp;<asp:Label ID="Label16" runat="server" ForeColor="#002251" Text="?" ToolTip="Hold down &quot;Ctrl&quot; + ALL required attachments for the billing packet"></asp:Label>
		<br />
		<br />
		<asp:Label ID="Label5" runat="server" Text="Email Information" Font-Bold="True" Font-Names="Microsoft Sans Serif" Font-Size="X-Large" ForeColor="#002251"></asp:Label>
		<br />
		<br />
		<asp:Label ID="Label6" runat="server" Text="Send To" Font-Names="Microsoft Sans Serif" Font-Size="Large" ForeColor="#002251"></asp:Label>
&nbsp;&nbsp;<asp:Label ID="Label25" runat="server" ForeColor="#FF0066" Text="*"></asp:Label>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
		<asp:TextBox ID="TextBox4" runat="server" Width="370px" OnTextChanged="TextBox4_TextChanged"></asp:TextBox>
		&nbsp;<asp:Label ID="Label15" runat="server" ForeColor="#002251" Text="?" ToolTip="Enter the Email that this will be sent out to"></asp:Label>
		<br />
		<br />
		<asp:Label ID="Label7" runat="server" Text="CC" Font-Names="Microsoft Sans Serif" Font-Size="Large" ForeColor="#002251"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
		<asp:TextBox ID="TextBox5" runat="server" AutoPostBack="True" Width="370px" OnTextChanged="TextBox5_TextChanged"></asp:TextBox>
		&nbsp;<asp:Label ID="Label17" runat="server" ForeColor="#002251" Text="?" ToolTip="Enter any emails to CC"></asp:Label>
		<br />
		<br />
		<asp:Label ID="Label8" runat="server" Text="BCC" Font-Names="Microsoft Sans Serif" Font-Size="Large" ForeColor="#002251"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<asp:TextBox ID="TextBox6" runat="server" AutoPostBack="True" Width="370px" OnTextChanged="TextBox6_TextChanged"></asp:TextBox>
		&nbsp;<asp:Label ID="Label18" runat="server" ForeColor="#002251" Text="?" ToolTip="Enter any emails to BCC"></asp:Label>
		<br />
		<br />
		<asp:Label ID="Label9" runat="server" Text="Body Template" Font-Names="Microsoft Sans Serif" Font-Size="Large" ForeColor="#002251"></asp:Label>
&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
		<asp:TextBox ID="TextBox7" runat="server" Height="88px" Width="370px"   TextMode="MultiLine" Font-Names="Microsoft Sans Serif" Font-Underline="False" OnTextChanged="TextBox7_TextChanged">Hello

Please find attached the Crane Worldwide Invoice and billing packet for your recent shipment.  Please let us know if there is anything else we can do for you.  We appreciate your business!

Thank you!</asp:TextBox>
		&nbsp;<asp:Label ID="Label19" runat="server" ForeColor="#002251" Text="?" ToolTip="This will be the text in the email body, edit as appropriate"></asp:Label>
		<br />
		<br />
			<br />
			<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Preview" Font-Names="Microsoft Sans Serif" Font-Size="X-Large" ForeColor="#002251" Height="70px" Width="200px" />
&nbsp;&nbsp;&nbsp;
		<asp:Button ID="Button2" runat="server" Font-Names="Microsoft Sans Serif" Font-Size="X-Large" ForeColor="#002251" Height="70px" OnClick="Button2_Click" Text="Clear All" Width="200px" />
		<br />
			<br />
			<br />
			<br />
			<br />
			<br />
			<br />
        </div>
    </form>
</body>
</html>
