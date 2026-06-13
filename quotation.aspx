<%@ Page Language="C#" AutoEventWireup="true" CodeFile="quotation.aspx.cs" Inherits="quotation" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link rel="stylesheet" type="text/css" href="table1.css" />
<link rel="stylesheet" type="text/css" href="textbox.css" />
<link rel="stylesheet" type="text/css" href="button.css" />
<style type="text/css">
* { margin:0; padding:0; outline:0;}
body {
    font-family: 'Droid Sans', sans-serif;
    color: #888;
    font-size: 12px;
}
.btn {
	height: 40px;
    margin: 0;
    padding: 0;
    vertical-align: middle;
    background: #f34a53;
    border: 0;
    font-family: 'Open Sans', sans-serif;
    font-size: 13px;
    font-weight: 400;
    line-height: 30px;
    color: #fff;
	position:relative;
	z-index:10000;
    text-shadow: none;
	border:none;
    -moz-box-shadow: 0 1px 25px 0 rgba(0,0,0,.05) inset, 0 -1px 25px 0 rgba(0,0,0,.05) inset;
    -webkit-box-shadow: 0 1px 25px 0 rgba(0,0,0,.05) inset, 0 -1px 25px 0 rgba(0,0,0,.05) inset;
    box-shadow: 0 1px 25px 0 rgba(0,0,0,.05) inset, 0 -1px 25px 0 rgba(0,0,0,.05) inset;
    -o-transition: all .3s; -moz-transition: all .3s; -webkit-transition: all .3s; -ms-transition: all .3s; transition: all .3s;
}


.btn:hover {
	background: #5d5d5d;
    color: #fff;
    -moz-box-shadow: none; -webkit-box-shadow: none; box-shadow: none;
}

.btn:active {
    background: #5d5d5d;
    color: #fff;
    -moz-box-shadow: 0 5px 10px 0 rgba(0,0,0,.15) inset, 0 -1px 25px 0 rgba(0,0,0,.05) inset;
    -webkit-box-shadow: 0 5px 10px 0 rgba(0,0,0,.15) inset, 0 -1px 25px 0 rgba(0,0,0,.05) inset;
    box-shadow: 0 5px 10px 0 rgba(0,0,0,.15) inset, 0 -1px 25px 0 rgba(0,0,0,.05) inset;
}

.btn:focus {
    background: #5d5d5d;
    color: #fff;
}

.btn:active:focus, .btn.active:focus {
    background: #5d5d5d;
    color: #fff;
}


.box {
	display: block;
	background: #f3f3f3;
	color: #302f2f;
	width: 100%;
	height: auto;
	border-radius:3px;
	margin-bottom:10px;
	padding: 8px 5px;
	border:3px solid #c0c0c0;
	-moz-box-shadow: inset  0px 3px 20px 3px  #e0e0e0;
	-webkit-box-shadow: inset  0px 3px 20px 3px  #e0e0e0;
	box-shadow: inset  0px 3px 20px 3px  #e0e0e0;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
}
input:focus, textarea:focus{
	border-color:#fb8e94;
	background:rgba(251,142,148,0.3);
}
textarea{height: 180px; margin-bottom:10px; font-family: 'Open Sans', sans-serif;}

::-webkit-input-placeholder {
   color: #302f2f;
}

:-moz-placeholder { /* Firefox 18- */
   color: #302f2f;
}

::-moz-placeholder {  /* Firefox 19+ */
   color: #302f2f;
}

:-ms-input-placeholder {  
   color: #302f2f;
}
table { width:100%; vertical-align:text-top;}
table td:first-child { text-align:right; padding:0 20px; width:20%;}
</style>
</head>
<body>
    <form id="form1" runat="server">
  <br /><h2>Send Your Document From Here:</h2>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="TextBox1" ErrorMessage="Enter Your Name" ForeColor="red"></asp:RequiredFieldValidator>
    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ControlToValidate="TextBox2" ErrorMessage="Enter Your Mobile Number." ForeColor="red"></asp:RequiredFieldValidator>
<table>
<tr>
<td> <asp:Label ID="Label1" runat="server" Font-Size="Large" ForeColor="Black" Text="Name:"></asp:Label></td>
<td> <asp:TextBox ID="TextBox1" runat="server" CssClass="box"></asp:TextBox></td></tr>
<tr>
<td> <asp:Label ID="Label2" runat="server" Font-Size="Large" ForeColor="Black" Text="Email-Id:"></asp:Label></td>
<td> <asp:TextBox ID="TextBox2" runat="server" CssClass="box"></asp:TextBox></td></tr>
<tr>
<td> <asp:Label ID="Label4" runat="server" Font-Size="Large" ForeColor="Black" Text="Upload:"></asp:Label></td>
<td> <asp:FileUpload ID="FileUpload1" runat="server" Height="30px" Width="231px" /></td></tr>
<tr>
<td> <asp:Label ID="Label3" runat="server" Font-Size="Large" ForeColor="Black" Text="Message:"></asp:Label></td>
<td> <asp:TextBox ID="TextBox3" runat="server" Height="82px" TextMode="MultiLine" CssClass="box"></asp:TextBox></td></tr>
<tr>
<td></td>
<td> <asp:ImageButton ID="ImageButton1" runat="server" onclick="ImageButton1_Click" CssClass="btn" ImageUrl="images/submit.png" Width="100px" /></td></tr>
</table>
        
    </form>
</body>
</html>