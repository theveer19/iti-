<%@ Page Language="C#" AutoEventWireup="true" CodeFile="enquiry.aspx.cs" Inherits="contact" %>

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
table {
	width:100%;
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
	background: #f3f3f3;
	border: 1px solid #c0c0c0;
	color: #302f2f;
	padding:8px;
	border-radius:0px;
	-moz-border-radius:0px;
	-webkit-border-radius:0px;
	-moz-box-shadow: inset  0px 3px 20px 3px  #e0e0e0;
	-webkit-box-shadow: inset  0px 3px 20px 3px  #e0e0e0;
	box-shadow: inset  0px 3px 20px 3px  #e0e0e0;
	width: 90%;
	display: block;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
	height: auto;
	border-radius:3px;
	margin:0 auto 10px auto;
}
input:focus, textarea:focus{border-color:#302f2f; }
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
h2 {
	text-align:center;
    color: #f34a53;
	font-size:28px;
	margin:10px 0;
}
p {
	font-size:14px;
	text-align:center;
	color:#000;
	word-spacing:3px;
}
p b {
	font-size:18px;
    color: #f34a53;
}
</style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
 <!-- <asp:Label ID="Label1" runat="server" Font-Size="Large" 
     Text="Send Your Enquiry/Feedback here:-"></asp:Label> 
    <br /> -->
    <h2>आज ही संपर्क करें... </h2>
    <p>नयी / पुरानी आईटीआई खोलने एवं संबद्धता प्राप्त करने हेतु नीचे दिए गए फॉर्म को भरें एवं <b>एक्सपर्ट्स</b> द्वारा <b>Free</b> में जानकारी हासिल करें .. </p>
    
    <asp:Label ID="Label6" runat="server" Text="Enter Details Correctly" Font-Size="Large" ForeColor="red"></asp:Label>
    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="TextBox1" ErrorMessage="Enter Your Name" ForeColor="red"></asp:RequiredFieldValidator>
    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ControlToValidate="TextBox2" ErrorMessage="Enter Your Mobile Number." ForeColor="red"></asp:RequiredFieldValidator>
    &nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server" 
        ControlToValidate="TextBox2" ErrorMessage="Enter No. In Digits" 
        Operator="DataTypeCheck" Type="Integer" ForeColor="red"></asp:CompareValidator>

  <br />
  <table>
  	<tr>
    	<td><asp:TextBox ID="TextBox1" runat="server" placeholder="नाम"></asp:TextBox></td>
    	<td><asp:TextBox ID="TextBox2" runat="server" placeholder="फ़ोन नंबर"></asp:TextBox></td>
    </tr>
  	<tr>
    	<td><asp:TextBox ID="TextBox3" runat="server" placeholder="ईमेल "></asp:TextBox></td>
    	<td><asp:TextBox ID="TextBox5" runat="server" placeholder="जिला / राज्य"></asp:TextBox></td>
    </tr>
  	<tr>
    	<td><asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine" placeholder="यहाँ मैसेज टाइप करें" Height="60px"></asp:TextBox></td>
    	<td><div class="submit" align="center"><asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="images/btn.png" CssClass="btn" Width="100px" onclick="ImageButton1_Click" /></div></td>
    </tr>
    
		
		
		<!----> 
        
        
	</table>

    </div>
    </form>
<!--POPUP-- 
	<a id="popup">Quick Enquiry</a>
	<script>
		var myModal = new Modal({
			content: '<iframe scrolling="no" src="enquiry.aspx" style="width:100%; height:190px; margin:0; border:none;"></iframe>'
		});

		var launchModal = document.getElementById('popup');

		launchModal.addEventListener('click', function() {
			myModal.open();
		});
	</script>
<!-- / POPUP-->
</body>
</html>
