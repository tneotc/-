// JavaScript Document
var len = document.getElementsByTagName("h1");
len.onmouserOver = function ()
{
    this.className = "over";
}
len.onmouserout = function ()
{
    this.className = "out";
}
$(document).ready(function (e)
{
    //失去焦点文本显示，获得焦点文本消失
    $(".text1").each(function ()
    {
        var defualtVal = this.value;
        $(this).focus(function ()
        {
            if (this.value == defualtVal)
            {
                this.value = "";
            }
        });
        $(this).blur(function ()
        {
            if (this.value == "")
            {
                this.value = defualtVal;
            }
        });
    });
    //失去焦点文本显示，获得焦点文本消失
    $(".text2").each(function ()
    {
        var defualtVal = this.value;
        $(this).focus(function ()
        {
            if (this.value == defualtVal)
            {
                this.value = "";
            }
        });
        $(this).blur(function ()
        {
            if (this.value == "")
            {
                this.value = defualtVal;
            }
        });
    });

    //点击小图片，显示表情
    $(".bq").click(function (e)
    {
        $(".face").slideDown();//慢慢向下展开
        e.stopPropagation();   //阻止冒泡事件
    });

    //在桌面任意地方点击，他是关闭
    $(document).click(function ()
    {
        $(".face").slideUp();//慢慢向上收
    });

    //点击小图标时，添加功能
    $(".face ul li").click(function ()
    {
        var simg = $(this).find("img").clone();
        $("textarea").append(simg);
    });
    //快捷留言
    $(".select_yixiang ul li a").each(function ()
    {
        $(this).click(function ()
        {
            var text = $(this).text();
            $("textarea").val(text)
        })
    });
    //获取时间
    var t = new Date();
    var Year = t.getFullYear();
    var Month = t.getMonth() + 1;
    var Day = t.getDate();
    var Hours = t.getHours();
    var Minutes = t.getMinutes();
    var Scondes = t.getSeconds();
    //将获取到的日期对象拼接。
    var timers = toString(Year) + "年" + toString(Month) + "月" + toString(Day) + "日" + toString(Hours) + ":" + toString(Minutes) + ":" + toString(Scondes)
    //数字转字符串
    function toString(n)
    {
        if (n < 9)
        {
            n = "0" + n;
        }
        else
        {
            n = "" + n;
        }
        return n;
    };
    //删除div	
    var divCount = 1;
    function delDiv()
    {
        var odiv = this;
        odiv.parentNode.parentNode.parentNode.parentNode.removeChild(document.getElementById("tdiv" + this.id));
    }
    for (var i = 0; i < $(".msgCon a").length; i++)
    {
        $(".msgCon a")[i].onclick = function ()
        {
            this.parentNode.parentNode.parentNode.parentNode.removeChild(document.getElementById("tdiv" + this.id));
            $.ajax
            ({
                url: "User.aspx/delete",
                type: "post",
                data: "{'id':" + this.id + "}",
                dataType: 'json',
                contentType: "application/json;charset=Unicode",
                success: function (data)
                {
                    alert("删除成功！");
                },
                error:function(err)
                {
                    alert(JSON.stringify(err));
                }
            })
        };
    }
    //默认文本提示及留言显示
    $("input[type='button']").click(function ()
    {
        //获取文本框内容
        var Name = $("#text").val();
        var Content = $("#dia").val();
        if (Name != "你的昵称" && Content != "你要说的话")
        {
            //构建留言模块
            $(".msgCon").append("<div class='msgBox' id='tdiv"
                                    + divCount + "'><dl><dt><img src='images/tx.jpg' width='50' height='50'/></dt><dd>"
                                    + Name + "</dd></dl><div class='msgTxt'>"
                                    + Content + "<p>" + "&nbsp;&nbsp;&nbsp;&nbsp;<a id='" +
                                    divCount + "'  title='删除这条信息'>删除</a></p></div></div>");
            document.getElementById(divCount).onclick = delDiv;
            divCount++;
            //还原默认文本
            $("#text").val("你的昵称");
            $("#dia").val("你要说的话");

        }
    });
    //将asp.net输出的双引号去除
});