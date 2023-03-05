<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registered.aspx.cs" Inherits="Customer_Registered" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="../App_Themes/StyleSheet.css" rel="stylesheet" />   
    <style type="text/css">
        .auto-style1 {
            height: 32px;
        }
        .auto-style2 {
            height: 22px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table id="tablecenter" style="width:593px">
            <tr>
                <td colspan="3" style="text-align: center; " class="auto-style1">
                    <span class="auto-captionstyle">顾客注册</span>
                </td>
                <td style="text-align: center; " class="auto-style1">
                    </td>
            </tr>
            <tr>
                <td class="auto-stringstyle">用户名*</td>
                <td colspan="2" >
                    <asp:TextBox ID="usernameTextBox" runat="server" Width="145px"></asp:TextBox>
                </td>
                <td >
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="必须输入用户名" ControlToValidate="usernameTextBox"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-stringstyle">密 码*</td>
                <td colspan="2" >
                    <asp:TextBox ID="passTextBox1" runat="server" Width="145px" TextMode="Password"></asp:TextBox>
                </td>
                <td >
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="必须输入密码" ControlToValidate="passTextBox1"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-stringstyle">密码确认*</td>
                <td colspan="2" >
                    <asp:TextBox ID="passTextBox2" runat="server" Width="145px" TextMode="Password"></asp:TextBox>
                </td>
                <td >
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="两次输入密码不相同" ControlToCompare="passTextBox1" ControlToValidate="passTextBox2"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-stringstyle">真实姓名</td>
                <td colspan="2" class="auto-style2" >
                    <asp:TextBox ID="xmTextBox" runat="server" Width="145px"></asp:TextBox>
                </td>
                <td class="auto-style2" >
                    <asp:RequiredFieldValidator ID="xmRequiredFieldValidator" runat="server" ControlToValidate="xmTextBox" ErrorMessage="必须输入姓名"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-stringstyle">
                   年 龄*
                </td>
                <td  colspan="2"> 
                    <asp:TextBox ID="ageTextBox" runat="server" Width="53px"></asp:TextBox>
                &nbsp;</td>
                <td> 
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ageTextBox" ErrorMessage="必须输入年龄"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="ageTextBox" ErrorMessage="年龄输入错误" MaximumValue="99" MinimumValue="10" Type="Integer"></asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-stringstyle">
                    学 历*</td>
                <td colspan="2"> 
                    <asp:DropDownList ID="DropDownList1" runat="server">
                    </asp:DropDownList>
                    &nbsp;</td>
                <td> 
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="DropDownList1" ErrorMessage="必须选择学历"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-stringstyle" rowspan="5">
                    地 址</td>
                <td class="auto-stringstyle"> 
                    地区*</td>
                <td> 
                    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                        OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                    </asp:DropDownList>
                </td>
                <td > 
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DropDownList2" ErrorMessage="必须选择地区"></asp:RequiredFieldValidator>
                    </td>
            </tr>
            <tr>
                <td class="auto-stringstyle"> 
                    省份*
                </td>
                <td > 
                    <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
                    </asp:DropDownList>
                </td>
                <td class="auto-style5"> 
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="DropDownList3" ErrorMessage="必须选择省份"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-stringstyle"> 
                    市*</td>
                <td> 
                    <asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList4_SelectedIndexChanged">
                    </asp:DropDownList>
                </td>
                <td> 
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="DropDownList4" ErrorMessage="必须选择城市"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-stringstyle"> 
                    县*</td>
                <td > 
                    <asp:DropDownList ID="DropDownList5" runat="server">
                    </asp:DropDownList>
                </td>
                <td> 
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="DropDownList5" ErrorMessage="必须选择县"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-stringstyle"> 
                    住址*</td>
                <td> 
                    <asp:TextBox ID="placeTextBox" runat="server" Width="295px" Height="24px" TextMode="MultiLine"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="placeTextBox" ErrorMessage="必须输入住址"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-stringstyle">
                    邮 箱*
                </td>
                <td colspan="2" >
                    <asp:TextBox ID="EmailTextBox" runat="server" Width="154px"></asp:TextBox>
                </td>
                <td >
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="EmailTextBox" ErrorMessage="必须输入邮箱"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="邮箱格式错误" ControlToValidate="EmailTextBox" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-stringstyle">
                    电 话*</td>
                <td colspan="2" >
                    <asp:TextBox ID="TelTextBox" runat="server" Width="153px"></asp:TextBox>
                </td>
                <td >
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="TelTextBox" ErrorMessage="必须输入电话"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td colspan="3" style="height: 40px;text-align:center">          
                    <asp:Button ID="Button1" runat="server" Text="确定" OnClick="Button1_Click" />
                    &nbsp; &nbsp; 
                    <input type="reset" id="Button2" runat="server" text="重置" class="auto-resettyle" /></td>
                <td style="height: 40px;text-align:center">          
                    &nbsp;</td>
            </tr>
            </table>    
    </div>
    </form>    
</body>
</html>
