<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="_login" %>

<!DOCTYPE html>
<script runat="server">

  
</script>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>欢迎来到注册界面</title>
    <link rel="stylesheet" type ="text/css" href ="css/login.css" />
 
</head>
<body>
    <form id="form1" runat="server">
        <div id="container">
        <div id="left"><img  src="images/zuce.jpg" /></div>
    <div id="content">
        <div id="head"> 
             <div id="top1"><img  src="images/logo.png" style="height: 34px; width: 153px"/></div>
             <div id="top2">用户登录</div>

        </div>
      
        <div id="con">
    <table id="zhuche" >
        <tr>
            <td class="t1">用户名</td>
             <td >
                 <asp:TextBox ID="TextBox1" runat="server" Width="245px"></asp:TextBox>
            </td>         
        </tr>      
         <tr>
            <td class="t1" >密码</td>
             <td >
                 <asp:TextBox ID="TextBox2" runat="server" Width="245px" TextMode="Password"   ValidateRequestMode="Enabled" style="height: 20px"></asp:TextBox>
             </td>         
        </tr>
           <tr>
            <td class="t1">用户类型</td>
            <td >
                <asp:RadioButton ID="RadioButton1" runat="server" GroupName="sel" Text="用户" />
                <asp:RadioButton ID="RadioButton2" runat="server" GroupName="sel" Text="企业" />
                <asp:RadioButton ID="RadioButton3" runat="server" GroupName="sel" Text="管理员" />
             </td>
        </tr>
        <tr >
            <td  class="t1">验证码</td>
            <td class="auto-stringstyle">
       <asp:TextBox ID="TextBox3" runat="server" Width="74px"></asp:TextBox>
                &nbsp;
                <asp:Label ID="Label1" runat="server" ForeColor="White" Height="20px" />                                                                                                                                  
                &nbsp;
                <span style="font-family: 楷体; font-size:12px; color: #0000FF">不区分大小写</span>    
                <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="看不清"
                        style="margin-top :10px; margin-bottom: 3px;color :#E20076;background :white;" Width="68px" />
                </td>
        </tr>
    </table>
               <asp:Button ID="Button1" runat="server" Text="登录" OnClick="Button1_Click"  />
                
                <input type ="reset" ID="Button2" value="重置" class="auto-resettyle" />
            &nbsp;<asp:Button ID="Button4" runat="server" Text="返回首页" OnClick="Button4_Click"  />
                
                </div>
    </div>
</div>
    </form>
 
 
</body>
</html>
