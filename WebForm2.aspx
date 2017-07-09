<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="InvoiceBeta1.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
    	<br />
		<br />
		<br />
		<br />
		<br />
		<asp:Label ID="Label1" runat="server" Text="From: " Font-Names="Microsoft Sans Serif" Font-Size="Large"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
		<br />
		<br />
		<asp:Label ID="Label2" runat="server" Text="To:" Font-Names="Microsoft Sans Serif" Font-Size="Large"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<asp:TextBox ID="TextBox4" runat="server" Width="220px" ReadOnly="True"></asp:TextBox>
		<br />
		<br />
		<asp:Label ID="Label3" runat="server" Text="BCC:" Font-Names="Microsoft Sans Serif" Font-Size="Large"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<asp:TextBox ID="TextBox6" runat="server" Width="220px" ReadOnly="True"></asp:TextBox>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<asp:Label ID="Label6" runat="server" Font-Names="Microsoft Sans Serif" Font-Size="Large" Text="Attachments"></asp:Label>
&nbsp;&nbsp;&nbsp;
		<asp:FileUpload ID="FileUpload1" runat="server" AllowMultiple="True" />
		<br />
		<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<asp:TextBox ID="TextBox5" runat="server" Width="220px" ReadOnly="True"></asp:TextBox>
		<br />
		<br />
		<br />
		<asp:Label ID="Label4" runat="server" Font-Names="Microsoft Sans Serif" Font-Size="Large" Text="Subject: "></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Names="Microsoft Sans Serif" Font-Size="X-Large" Text="Crane Worldwide Invoice"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<asp:TextBox ID="TextBox1" runat="server" ReadOnly="True"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<asp:TextBox ID="TextBox2" runat="server" ReadOnly="True"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<asp:TextBox ID="TextBox3" runat="server" ReadOnly="True"></asp:TextBox>
		<br />
		<br />
&nbsp;&nbsp;
		<asp:TextBox ID="TextBox7" runat="server" TextMode="MultiLine" AutoPostBack="True" Font-Names="Microsoft Sans Serif" Font-Size="Large" Height="132px" ReadOnly="True" Width="800px"></asp:TextBox>
		<br />
		<br />
		<p>
			<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" Font-Names="Microsoft Sans Serif" Font-Size="X-Large" ForeColor="#002251" Height="70px" Width="200px" />
		&nbsp;&nbsp;&nbsp;
			<asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Edit" Font-Names="Microsoft Sans Serif" Font-Size="X-Large" ForeColor="#002251" Height="70px" Width="200px" />
		&nbsp;&nbsp;&nbsp;
		</p>
		<p>
			&nbsp;</p>
		<p>
			&nbsp;</p>
        <div>
        </div>
    </form>
</body>
</html>
