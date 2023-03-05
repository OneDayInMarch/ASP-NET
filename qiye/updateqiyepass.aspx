<%@ Page Language="C#" AutoEventWireup="true" CodeFile="updateqiyepass.aspx.cs" Inherits="Operator_updateoperatorpass"  %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type ="text/css">    
         #tablecenter{border :1px solid ;background :#f48fc7;}
    </style>
</head>
<body>
    <form id="form2" runat="server">
    <div>
        <table id="tablecenter" style="width:500px">
                 <tr>
                <td colspan="2" style="text-align: center; height: 50px">
                    <span class="auto-captionstyle">修改我的密码</span>
                </td>
            <tr>
                <td style="width:150px" class="auto-stringstyle">原密码
                </td>
                <td style="width:150px">
                    <asp:TextBox ID="TextBox1" runat="server" TextMode="Password" style="width:100px"></asp:TextBox>
                </td>
                <td style="width:200px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"
                        ErrorMessage="原密码不能为空"> </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-stringstyle">   
                    新密码
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" style="width:100px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2"
                        ErrorMessage="新密码不能为空"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-stringstyle">   
                    重复一次
                </td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" TextMode="Password" style="width:100px"></asp:TextBox>
                </td>
                <td>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2"
                        ControlToValidate="TextBox3" ErrorMessage="两次新密码输入不相同" >
                    </asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align:center;height:50px">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="提交" />
                    &nbsp;&nbsp;
                    <input type ="reset" ID="Button2" runat="server" value="重置" class="auto-resettyle" />
                </td>
            </tr>
        </table>    
    </div>
    </form>    
</body>
</html>
