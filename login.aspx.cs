
using System;
using System.Web.UI;
public partial class _login : System.Web.UI.Page
{
    CommDB mydb = new CommDB();         //创建CommDB类对象
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)           //在网页首发时执行            
            Label1.Text = mydb.RandomNum(4);
        else                            //在回传时保持密码
            TextBox2.Attributes.Add("value", TextBox2.Text);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string mysql;                   //SQL语句
        int i;
        if (TextBox1.Text.Trim() == "" || TextBox2.Text.Trim() == "")
        {
            Response.Write("<script>alert('用户名和密码不能为空!')</script>");
            return;
        }
        if (TextBox3.Text.ToUpper().Trim() != Label1.Text.Trim()) //若验证码输入错误
            Response.Write("<script>alert('你的验证码输入错误，请重输入!')</script>");
        else                            //若验证码输入正确
        {
            if (RadioButton1.Checked)   //个人用户登录
            {
                mysql = "SELECT 用户名 FROM Customers WHERE 用户名 = '"
                    + TextBox1.Text + "' AND 密码 = '" + TextBox2.Text + "' AND 有效否='1'";
                i = mydb.Rownum(mysql); //执行SQL语句并返回行数i
                if (i > 0)              //合法用户
                {
                    Session["uname"] = TextBox1.Text.Trim();      //保存用户名
                    Server.Transfer("~/customermenu.aspx");       //转向customermenu网页
                }
                else    //非法用户
                    Response.Write("<script>alert('对不起，你输入的用户名/密码错误或者已无效，请查实!')</script>");
            }
           else if (RadioButton2.Checked)   //企业用户登录
            {
                mysql = "SELECT 用户名 FROM Users WHERE 用户名 = '" + TextBox1.Text 
                    + "' AND 密码 = '" + TextBox2.Text + "' AND 类型 ='企业' AND 有效否='1'";
                i = mydb.Rownum(mysql);     //执行SQL语句并返回行数i
                if (i > 0)                  //合法企业用户
                {
                    Session["uname"] = TextBox1.Text.Trim();    //保存企业用户名
                    Server.Transfer("~/qiyemenu.aspx");     //转向qiye网页
                }
                else    //非法用户
                    Response.Write("<script>alert('对不起，你输入的用户名/密码错误或者已无效，请查实!')</script>");
            }
            else if (RadioButton3.Checked)   //管理员登录
            {
                mysql = "SELECT 用户名 FROM Users WHERE 用户名 = '" + TextBox1.Text
                    + "' AND 密码 = '" + TextBox2.Text + "' AND 类型 ='管理员'";
                i = mydb.Rownum(mysql);     //执行SQL语句并返回行数i
                if (i > 0)                  //合法管理员用户
                {
                    Session["uname"] = TextBox1.Text.Trim();   //保存管理员用户名
                    Server.Transfer("~/managermenu.aspx");     //转向managermenu网页
                }
                else    //非法用户
                    Response.Write("<script>alert('对不起，你输入的用户名或者密码错误，请查实!')</script>");
            }           
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Label1.Text = mydb.RandomNum(4);    //获取验证码并显示在Label1控件中
    }
 
protected void Button4_Click(object sender, EventArgs e)
{
    {
      
        Server.Transfer("~/index.aspx");        //转向touristmenu网页
    }
}
}

