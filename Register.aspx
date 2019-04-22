<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link href="CSS/Register.css" type="text/css" rel="stylesheet" />
<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/p5.js"></script>
<script src="js/sketch2.js"></script>
<script src="addons/p5.dom.js"></script>
<script>
    function loadr()
    {
        document.getElementById("TextBox1").onblur = function ()
        {
            if (this.value == "")
            {
                document.getElementById("Label1").innerHTML = "用户名为空！";
            }
            else
            {
                document.getElementById("Label1").innerHTML = "";
            }
        };
        document.getElementById("TextBox2").onblur = function ()
        {
            if (this.value == "")
            {
                document.getElementById("Label2").innerHTML = "密码为空!";
            }
            else 
            {
                document.getElementById("Label2").innerHTML = "";
            }
        };
        document.getElementById("TextBox3").onblur = function ()
        {
            if (this.value == "")
            {
                document.getElementById("Label3").innerHTML = "请再输入一次密码!";
            }
            else if (document.getElementById("TextBox2").value != this.value)
            {
                document.getElementById("Label3").innerHTML = "两次输入密码不匹配！";
            }
            else
            {
                document.getElementById("Label3").innerHTML = "";
            }
        };
        
    }
</script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body onload="loadr();autoExcute()">
    <form id="form1" runat="server">
    <div id="realbody">
        <h1>欢迎新用户！请注册</h1>
        <div>
            新用户用户名:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            <br />
            密码：&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
            <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
            <br />
            确认密码：&nbsp; <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
            <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
            <br />
            <asp:Button ID="Button1" runat="server" Text="注册" OnClick="Button1_Click" />
            &nbsp;<asp:Button ID="Button2" runat="server" Text="重置" />
        </div>
    </div>
    </form>
</body>
</html>
