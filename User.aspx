<%@ Page Language="C#" AutoEventWireup="true" CodeFile="User.aspx.cs" Inherits="User" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>留言板</title>
    <script src="js/p5.js"></script>
    <script src="addons/p5.dom.js"></script>
    <script src="js/sketch2.js"></script>
    <script src="js/time.js"></script>
    <script src="js/jquery-1.11.1.min.js"></script>
    <script></script>
    <!--javascript代码请外置-->
    <link href="CSS/page3css.css" rel="stylesheet" type="text/css" />
</head>
<body onload="autoExcute(); setTime();">
    <div id="realbody">
        <div id="title">
            <h1 onmouseover="this.className='over'" onmouseout="this.className='out'">新年留言板</h1>
        </div>
        <div>
            <div id="main">
                <form id="form1" runat="server">
                    <label for="Name">昵&nbsp;&nbsp;称:</label>
                    <input type="text" name="Name" id="text" class="text1" value="你的昵称" />
                    <label for="Content">留言内容:</label>
                    <textarea name="Content" class="text2" id="dia" rows="5">你要说的话</textarea>
                    <div class="But">
                        <input type="button" class='submit' value="发表" />
                        <img src="images/bba_thumb.gif" class='bq' />
                        <!--face begin-->

                        <div class="face">
                            <ul>
                                <li>
                                    <img src="images/zz2_thumb.gif" title="[织]" /></li>
                                <li>
                                    <img src="images/horse2_thumb.gif" title="神马]" /></li>
                                <li>
                                    <img src="images/fuyun_thumb.gif" title="[浮云]" /></li>
                                <li>
                                    <img src="images/geili_thumb.gif" title="[给力]"></li>
                                <li>
                                    <img src="images/wg_thumb.gif" title="[围观]"></li>
                                <li>
                                    <img src="images/vw_thumb.gif" title="[威武]"></li>
                                <li>
                                    <img src="images/panda_thumb.gif" title="[熊猫]"></li>
                                <li>
                                    <img src="images/rabbit_thumb.gif" title="兔子]"></li>
                                <li>
                                    <img src="images/otm_thumb.gif" title="[奥特曼]"></li>
                                <li>
                                    <img src="images/j_thumb.gif" title="[囧]"></li>
                                <li>
                                    <img src="images/hufen_thumb.gif" title="[互粉]"></li>
                                <li>
                                    <img src="images/liwu_thumb.gif" title="[礼物]"></li>
                                <li>
                                    <img src="images/smilea_thumb.gif" title="呵呵]"></li>
                                <li>
                                    <img src="images/tootha_thumb.gif" title="嘻嘻]"></li>
                                <li>
                                    <img src="images/laugh.gif" title="[哈哈]"></li>
                                <li>
                                    <img src="images/tza_thumb.gif" title="[可爱]"></li>
                                <li>
                                    <img src="images/kl_thumb.gif" title="[可怜]"></li>
                                <li>
                                    <img src="images/kbsa_thumb.gif" title="[挖鼻屎]"></li>
                                <li>
                                    <img src="images/cj_thumb.gif" title="[吃惊]"></li>
                                <li>
                                    <img src="images/shamea_thumb.gif" title="[害羞]"></li>
                                <li>
                                    <img src="images/zy_thumb.gif" title="[挤眼]"></li>
                                <li>
                                    <img src="images/bz_thumb.gif" title="[闭嘴]"></li>
                                <li>
                                    <img src="images/lovea_thumb.gif" title="[爱你]"></li>
                                <li>
                                    <img src="images/heia_thumb.gif" title="[偷笑]"></li>
                                <li>
                                    <img src="images/qq_thumb.gif" title="[亲亲]"></li>
                                <li>
                                    <img src="images/mb_thumb.gif" title="[太开心]"></li>
                                <li>
                                    <img src="images/ldln_thumb.gif" title="[懒得理你]"></li>
                                <li>
                                    <img src="images/yhh_thumb.gif" title="[右哼哼]"></li>
                                <li>
                                    <img src="images/zhh_thumb.gif" title="[左哼哼]"></li>
                                <li>
                                    <img src="images/x_thumb.gif" title="[嘘]"></li>
                                <li>
                                    <img src="images/wq_thumb.gif" title="[委屈]"></li>
                                <li>
                                    <img src="images/k_thumb.gif" title="[打哈气]"></li>
                                <li>
                                    <img src="images/bba_thumb.gif" title="[抱抱]"></li>
                                <li>
                                    <img src="images/yw_thumb.gif" title="[疑问]"></li>
                                <li>
                                    <img src="images/cza_thumb.gif" title="[馋嘴]"></li>
                                <li>
                                    <img src="images/88_thumb.gif" title="[拜拜]"></li>
                                <li>
                                    <img src="images/sk_thumb.gif" title="[思考]"></li>
                                <li>
                                    <img src="images/sleepya_thumb.gif" title="[困]"></li>
                                <li>
                                    <img src="images/sleepa_thumb.gif" title="[睡觉]"></li>
                                <li>
                                    <img src="images/money_thumb.gif" title="[钱]"></li>
                                <li>
                                    <img src="images/cool_thumb.gif" title="[酷]"></li>
                                <li>
                                    <img src="images/hsa_thumb.gif" title="[花心]"></li>
                                <li>
                                    <img src="images/gza_thumb.gif" title="[鼓掌]"></li>
                                <li>
                                    <img src="images/hearta_thumb.gif" title="[心]"></li>
                                <li>
                                    <img src="images/pig.gif" title="[猪头]"></li>
                                <li>
                                    <img src="images/ok_thumb.gif" title="[ok]"></li>
                                <li>
                                    <img src="images/ye_thumb.gif" title="[耶]"></li>
                                <li>
                                    <img src="images/good_thumb.gif" title="[good]"></li>
                                <li>
                                    <img src="images/no_thumb.gif" title="[不要]"></li>
                                <li>
                                    <img src="images/z2_thumb.gif" title="[赞]"></li>
                                <li>
                                    <img src="images/come_thumb.gif" title="[来]"></li>
                                <li>
                                    <img src="images/lazu_thumb.gif" title="[蜡烛]"></li>
                                <li>
                                    <img src="images/clock_thumb.gif" title="[钟]"></li>
                                <li>
                                    <img src="images/cake.gif" title="[蛋糕]"></li>
                                <li>
                                    <img src="images/m_thumb.gif" title="[话筒]"></li>
                                <li>
                                    <img src="images/weijin_thumb.gif" title="[围脖]"></li>
                                <li>
                                    <img src="images/lxhzhuanfa_thumb.gif" title="[转发]"></li>
                                <li>
                                    <img src="images/lxhluguo_thumb.gif" title="[路过这儿]"></li>
                                <li>
                                    <img src="images/daxiongleibenxiong_thumb.gif" title="[dx泪奔]"></li>
                                <li>
                                    <img src="images/youqian_thumb.gif" title="[有钱]"></li>
                                <li>
                                    <img src="images/cf_thumb.gif" title="[冲锋]"></li>
                                <li>
                                    <img src="images/camera_thumb.gif" title="[照相机]"></li>
                            </ul>
                        </div>
                        <!--face end-->
                    </div>
                </form>
            </div>
            <div class="select_yixiang fr1">
                <p class="ninTitle">您可以根据意向选择下列 <em>[快捷留言]</em></p>
                <ul>
                    <li><a href="javascript:void(0)" title="新年好，万事顺，事事如意!　">新年好，万事顺，事事如意!</a></li>
                    <li><a href="javascript:void(0)" title="阖家欢乐！">阖家欢乐！</a></li>
                    <li><a href="javascript:void(0)" title="万事大吉!">万事大吉!</a></li>
                    <li><a href="javascript:void(0)" title="财源广进!">财源广进!</a></li>
                    <li><a href="javascript:void(0)" title="家兴，国兴，事事兴。家圆，国圆，事事圆。">家兴，国兴，事事兴。家圆，国圆，事事圆。</a></li>
                    <li><a href="javascript:void(0)" title="祝新年心情好，身体好，一切顺心。">祝新年心情好，身体好，一切顺心。</a></li>
                    <li><a href="javascript:void(0)" title="祝您新的一年身体健康!工作顺利!生活美满!">祝您新的一年身体健康!工作顺利!生活美满!</a></li>
                    <li><a href="javascript:void(0)" title="贺新年，庆佳节，恭喜发财!">贺新年，庆佳节，恭喜发财!</a></li>
                </ul>
            </div>
        </div>
        <div  id="msgCon" class="msgCon" runat="server">

        </div>

    </div>
    <div id="footer">
        <span id="theTime"></span>
        <asp:Label ID="Label1" runat="server"><a href="ChangePwd.aspx">修改密码</a></asp:Label>
    </div> 
</body>
<script src="js/page3.js"></script>
</html>
