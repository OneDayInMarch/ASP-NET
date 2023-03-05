using System;

public partial class operatormenu : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = "操作员端→欢迎你:" + Session["uname"];
    }
}
