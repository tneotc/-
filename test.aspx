<%@ Page Language="C#" AutoEventWireup="true" CodeFile="test.aspx.cs" Inherits="test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <script src="js/jquery-1.11.1.min.js"></script>
    
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div id="title">
            </div>
            <input type="button" name="btn" value="验证用户" id="btn" />
            
            <%-- <asp:Panel ID="Panel1" runat="server">--%>
            <%-- </asp:Panel>--%>
        </div>
    </form>
    <script type="text/javascript">
        var tid = document.getElementById("title");
        var text = "";
        $(document).ready(function () {
            $(function () {
                $("#btn").click(function ()
                {
                    $.ajax
                    ({
                        type: "post", //要用post方式                 
                        url: "test.aspx/SayHello",//方法所在页面和方法名
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        async: false,
                        cache: false,
                        timeout: 1000,
                        success: function (data) {
                            text = data.d;
                            alert(text);
                            //document.getElementById("title").innerHTML = data.d;
                            //返回的数据用data.d获取内容                            
                        },
                        error: function (err) {
                            alert(err);
                        }
                    });
                    tid.innerHTML += text;
                });
            });
        });
    </script>
</body>
</html>
