<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addnewJob.aspx.cs" Inherits="addnewProduct"  %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    
    <style type="text/css">
        .auto-style1 {
            font-family: 楷体;
            font-size: medium;
            color: #0000FF;
            font-weight: bold;
            text-align: right;
            height:22px;
            height: 23px;
        }
        .auto-style2 {
            height: 23px;
        }
        .auto-style3 {
            width: 47px;
        }
        .auto-style4 {
            height: 23px;
            width: 47px;
        }
         #tablecenter{border :1px solid ;background :#f48fc7;}
    </style>
</head>
<body>
    <form id="form2" runat="server">
        <table id="tablecenter" style="width:467px">
            <tr>
                 <td colspan="2" style="text-align: center; height: 50px;">
                     <span class="auto-captionstyle">添加新的招聘信息</span>
                </td>
                 <td style="text-align: center; height: 50px;">
                     &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-stringstyle" >商品编号</td>
                <td class="auto-style3" >
                    <asp:TextBox ID="bhTextBox" runat="server" Width="108px"></asp:TextBox>
                </td>
                <td >
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="bhTextBox" ErrorMessage="必须输入"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-stringstyle">
                    分 类
                </td>
                <td class="auto-style3"> 
                    <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True">
                    </asp:DropDownList>
                </td>
                <td> 
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="DropDownList1" ErrorMessage="必须选择"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-stringstyle">
                    子 类</td>
                <td class="auto-style3"> 
                    <asp:DropDownList ID="DropDownList2" runat="server" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" AutoPostBack="True">
                    </asp:DropDownList>
                </td>
                <td> 
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="DropDownList2" ErrorMessage="必须选择"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-stringstyle">
                    品 牌</td>
                <td class="auto-style3"> 
                    <asp:DropDownList ID="DropDownList3" runat="server">
                    </asp:DropDownList>
                </td>
                <td class="auto-style2"> 
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="DropDownList3" ErrorMessage="必须选择"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    型 号</td>
                <td class="auto-style4"> 
                    <asp:TextBox ID="xhTextBox" runat="server" Width="186px"></asp:TextBox>
                </td>
                <td class="auto-style2"> 
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="xhTextBox" ErrorMessage="必须输入"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-stringstyle">
                    单 价 </td>
                <td class="auto-style3" >
                    <asp:TextBox ID="priceTextBox" runat="server" Width="77px"></asp:TextBox>
                    &nbsp;</td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="priceTextBox" ErrorMessage="必须输入"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-stringstyle">
                    入库数量</td>
                <td class="auto-style3">
                    <asp:TextBox ID="numTextBox" runat="server" Width="79px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="numTextBox" ErrorMessage="必须输入"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:FileUpload ID="FileUpload1" runat="server" style="color: #FF0000; font-size: medium; font-weight: 700; font-family: 黑体" Width="246px" />
                &nbsp;</td>
                <td >
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td colspan="2" style="height: 53px;text-align:center">          
                    <asp:Button ID="Button1" runat="server" Text="确定" OnClick="Button1_Click" />
                    &nbsp; &nbsp; 
                    <input type="reset" id="Button2" runat="server" text="重置" class="auto-resettyle" /></td>
                <td style="height: 53px;text-align:center">          
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="3" style="height: 23px;text-align:center">          
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
            </tr>
        </table>    
    </form>    
</body>
</html>
