<%@ Page Language="C#" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="contact" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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

input, textarea{
	display: block;
	background: #f3f3f3;
	color: #302f2f;
	width: 100%;
	height: auto;
	border-radius:3px;
	margin-bottom:10px;
	padding: 8px 5px;
	border:3px solid #c0c0c0;
/*	-moz-box-shadow: inset  0px 3px 20px 3px  #e0e0e0;
	-webkit-box-shadow: inset  0px 3px 20px 3px  #e0e0e0;
	box-shadow: inset  0px 3px 20px 3px  #e0e0e0;*/
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
}
input:focus, textarea:focus{border-color:#fb8e94; }
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
</style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
 <!-- <asp:Label ID="Label1" runat="server" Font-Size="Large" 
     Text="Send Your Enquiry/Feedback here:-"></asp:Label> 
    <br /> -->
    
    <asp:Label ID="Label6" runat="server" Text="Enter Details Correctly" Font-Size="Large" ForeColor="red"></asp:Label>
    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="TextBox1" ErrorMessage="Enter Your Name" ForeColor="red"></asp:RequiredFieldValidator>
    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ControlToValidate="TextBox2" ErrorMessage="Enter Your Mobile Number." ForeColor="red"></asp:RequiredFieldValidator>
    &nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server" 
        ControlToValidate="TextBox2" ErrorMessage="Enter No. In Digits" 
        Operator="DataTypeCheck" Type="Integer" ForeColor="red"></asp:CompareValidator>
    <br />
  <br />
		<asp:TextBox ID="TextBox1" runat="server" placeholder="Your full name:"></asp:TextBox>
		<asp:TextBox ID="TextBox3" runat="server" placeholder="Your email:"></asp:TextBox>
		<asp:TextBox ID="TextBox2" runat="server" placeholder="Phone number:"></asp:TextBox> 
        <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine" placeholder="Message:" Height="100px"></asp:TextBox>
        <div class="submit"><asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="images/submit.png" CssClass="btn" Width="100px" onclick="ImageButton1_Click" /></div>
    </div>
    </form>
</body>
</html>
