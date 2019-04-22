//得到时间并写入div
function getDate()
{
    //获取当前时间
    var date = new Date();
    //格式化为本地时间格式
    var date1 = date.toLocaleString();
    //获取div
    var span1 = document.getElementById("theTime");
    //将时间写入div
    span1.innerHTML = date1;
    span1.style.position = "absolute";
    span1.style.left = "20px";
	span1.style.top = "15px";
    span1.style.color = "rgb()";
    span1.style.fontSize = "24px";

}
function setTime()
{
    //使用定时器每秒向div写入当前时间
    setInterval("getDate()", 1000);
}