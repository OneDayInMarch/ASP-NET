using System;

public partial class customermenu : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = "我的个人信息管理：" + Session["uname"];
    }
}
