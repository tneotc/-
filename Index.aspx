<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="CSS/Index.css" type="text/css" rel="stylesheet"/>

    <script src="js/p5.js"></script>
    <script src="js/sketch2.js"></script>
    <script src="addons/p5.dom.js"></script>
    <script>
        function onlo()
        {
            document.getElementById("TextBox1").onblur = function ()
            {
                if(this.value == "")
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
                    document.getElementById("Label2").innerHTML = "密码为空！";
                }
                else
                {
                    document.getElementById("Label1").innerHTML = "";
                }
            }
            document.getElementById("Button2").onclick = function ()
            {
                window.open("Register.aspx");
            }
        }
        
    </script>
</head>
<body onload ="onlo();autoExcute()">
    <form id="form1" runat="server">
    <div id="realbody">
        <h1>新年留言板！请登录</h1>
        <div>
            用户名:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <br />
        密码:&nbsp;<asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:Button ID="Button1" runat="server" Text="登录" OnClick="Button1_Click" />
&nbsp;<asp:Button ID="Button2" runat="server" Text="注册" />
        </div>
    </div>
    </form>
</body>
</html>
