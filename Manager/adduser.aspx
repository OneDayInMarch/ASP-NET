<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adduser.aspx.cs" Inherits="adduser"  %>
<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
   <style type="text/css">
       #tablecenter{border :1px solid ;background :#f48fc7;}
       </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table id="tablecenter" style="width:377px">
            <tr>
                <td colspan="2" style="text-align: center; height: 40px;">
                    <span class="auto-captionstyle">添加新的用户</span>
                </td>
            </tr>
            <tr>
                <td class="auto-stringstyle" style="width:30%">用户名
                </td>
                <td style="width:70%">
                    <asp:TextBox ID="TextBox1" runat="server" style="width:100px"></asp:TextBox>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"
                        ErrorMessage="用户名不能为空" ></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-stringstyle" >初始密码
                </td>
                <td >
                    <asp:TextBox ID="TextBox2" runat="server" style="width:100px"></asp:TextBox>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2"
                        ErrorMessage="初始密码不能为空"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td class="auto-stringstyle">类 型</td>
                <td>
                    <asp:RadioButton ID="RadioButton1" runat="server" GroupName="lx" Text="操作员" />
                    <asp:RadioButton ID="RadioButton2" runat="server" GroupName="lx" Text="管理员" />
                </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align:center; height: 53px">                   
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="提交" />
                    &nbsp;
                    <input id="Reset1" runat="server" text="重置" type="reset" value="重置" class="auto-resettyle" /></td>
            </tr>
        </table>    
    </div>
    </form>
</body>
</html>
