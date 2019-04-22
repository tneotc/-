using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Text.RegularExpressions;

public partial class _Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("server = .;database = NewYear; integrated security=true");//与数据库进行连接
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();//开启连接
        Label1.Text = "";
        Label2.Text = "";
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if(TextBox1.Text == "")
        {
            Label1.Text = "用户名为空！";
            if (TextBox2.Text == "")
            {
                Label2.Text = "密码为空！";
                return;
            }
            return;
        }
        if(TextBox2.Text == "")
        {
            Label2.Text = "密码为空！";
            return;
        }
        string sql = "select * from UserInfo where username=@id and password=@pwd";
        SqlCommand cmd = new SqlCommand(sql, con);
        cmd.Parameters.AddWithValue("@id", TextBox1.Text);
        cmd.Parameters.AddWithValue("@pwd", TextBox2.Text);
        SqlDataReader drder = cmd.ExecuteReader();
        if(drder.HasRows)
        {
            Response.ContentType = "text/html";
            drder.Read();
            string control = drder.GetString(0).Trim();
            switch(control)
            {
                case "admin":
                    Response.Write("<h1>管理员登录成功！</h1>");
                    Session["UserId"] = drder.GetString(0).Trim();
                    Response.Redirect("Administator.aspx");
                    break;
                default :
                    Response.Write("<h1>普通用户登录成功！</h1>");
                    Session["UserId"] = drder.GetString(0).Trim();
                    Response.Redirect("User.aspx");
                    break;
            }
        }
        else
        {
            Label1.Text = "用户名或密码错误！";
        }
    }
}