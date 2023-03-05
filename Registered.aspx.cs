using System;
using System.Web.UI;
using System.Data;

public partial class Customer_Registered : System.Web.UI.Page
{
    CommDB mydb = new CommDB();                             //创建CommDB类对象
    DataSet myds = new DataSet();
    string mysql;                                           //存放SQL语句
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)    //在网页首发时执行
        {
            mysql = "SELECT 学历 FROM Education";
            myds = mydb.ExecuteQuery(mysql, "Education");       //执行SELECT语句
            DataRow nrow = myds.Tables["Education"].NewRow();   //插入一个空行
            nrow["学历"] = "";
            myds.Tables["Education"].Rows.InsertAt(nrow, 0);
            DropDownList1.DataSource = myds.Tables["Education"];  //设置学历下拉列表的数据源
            DropDownList1.DataTextField = "学历";               //设置学历下拉列表的绑定字段
            DropDownList1.DataBind();                           //数据绑定
            mysql = "SELECT distinct 地区 FROM Area";
            myds = mydb.ExecuteQuery(mysql, "Area");            //执行SELECT语句
            DataRow nrow1 = myds.Tables["Area"].NewRow();       //插入一个空行
            nrow1["地区"] = "";
            myds.Tables["Area"].Rows.InsertAt(nrow1, 0);
            DropDownList2.DataSource = myds.Tables["Area"];     //设置地区下拉列表的数据源
            DropDownList2.DataTextField = "地区";               //设置地区下拉列表的绑定字段
            DropDownList2.DataBind();                           //数据绑定
            DropDownList3.Enabled = false;
            DropDownList4.Enabled = false;
            DropDownList5.Enabled = false;
        }
        else     //在回传时保持密码
        {
            passTextBox1.Attributes.Add("value", passTextBox1.Text);
            passTextBox2.Attributes.Add("value", passTextBox2.Text);
        }
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        DropDownList3.Enabled = true;
        mysql = "SELECT distinct 省份 FROM Area WHERE 地区='" + DropDownList2.SelectedValue.ToString().Trim() + "'";
        myds = mydb.ExecuteQuery(mysql, "Area");       //执行SELECT语句
        DataRow nrow = myds.Tables["Area"].NewRow();   //插入一个空行
        nrow["省份"] = "";
        myds.Tables["Area"].Rows.InsertAt(nrow, 0);
        DropDownList3.DataSource = myds.Tables["Area"];//设置省份下拉列表的数据源
        DropDownList3.DataTextField = "省份";          //设置省份下拉列表的绑定字段
        DropDownList3.DataBind();                      //数据绑定
        DropDownList4.Items.Clear();
        DropDownList5.Items.Clear();
    }
    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {
        DropDownList4.Enabled = true;
        mysql = "SELECT distinct 市 FROM Area WHERE 省份='" + DropDownList3.SelectedValue.ToString().Trim() + "'";
        myds = mydb.ExecuteQuery(mysql, "Area");       //执行SELECT语句
        DataRow nrow = myds.Tables["Area"].NewRow();   //插入一个空行
        nrow["市"] = "";
        myds.Tables["Area"].Rows.InsertAt(nrow, 0);
        DropDownList4.DataSource = myds.Tables["Area"];//设置市下拉列表的数据源
        DropDownList4.DataTextField = "市";            //设置市下拉列表的绑定字段
        DropDownList4.DataBind();                      //数据绑定
        DropDownList5.Items.Clear();
    }
    protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
    {
        DropDownList5.Enabled = true;
        mysql = "SELECT distinct 县 FROM Area WHERE 市='" + DropDownList4.SelectedValue.ToString().Trim() + "'";
        myds = mydb.ExecuteQuery(mysql, "Area");       //执行SELECT语句
        DataRow nrow = myds.Tables["Area"].NewRow();
        nrow["县"] = "";
        myds.Tables["Area"].Rows.InsertAt(nrow, 0);
        DropDownList5.DataSource = myds.Tables["Area"];//设置县下拉列表的数据源
        DropDownList5.DataTextField = "县";            //设置县下拉列表的绑定字段
        DropDownList5.DataBind();                      //数据绑定
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            int i;
            mysql = "SELECT * FROM Customers WHERE 用户名='" + usernameTextBox.Text.Trim() + "'";
            i = mydb.Rownum(mysql); //执行SQL语句并返回行数i
            if (i > 0)              //顾客用户名重复
                Response.Write("<script>alert('对不起，你输入的用户名已经注册了!')</script>");
            else    //合法的用户名
            {
                mysql = "INSERT INTO Customers(用户名,密码,姓名,年龄,学历,地区,省份,市,县,住址,邮箱,电话,有效否)"
                    + "VALUES('" + usernameTextBox.Text.Trim() + "','"
                    + passTextBox1.Text.Trim() + "','"
                    + xmTextBox.Text.Trim() + "',"
                    + ageTextBox.Text + ",'"
                    + DropDownList1.SelectedValue.ToString().Trim() + "','"
                    + DropDownList2.SelectedValue.ToString().Trim() + "','"
                    + DropDownList3.SelectedValue.ToString().Trim() + "','"
                    + DropDownList4.SelectedValue.ToString().Trim() + "','"
                    + DropDownList5.SelectedValue.ToString().Trim() + "','"
                    + placeTextBox.Text.Trim() + "','"
                    + EmailTextBox.Text.Trim() + "','"
                    + TelTextBox.Text.Trim() + "','1')";
                mydb.ExecuteNonQuery(mysql);
                Response.Redirect("~/dispinfo.aspx?info=你可以退出再以顾客身份登录后购物，或者继续以游客身份浏览!");
            }
        }
    }
}