<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Form1.aspx.cs" Inherits="web2.Form1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 61%;
        }
        .auto-style2 {
            height: 22px;
            text-align: center;
        }
        .auto-style3 {
            width: 230px;
        }
        .auto-style4 {
            width: 230px;
            height: 23px;
        }
        .auto-style5 {
            height: 23px;
        }
        .auto-style6 {
            width: 100%;
        }
        .auto-style7 {
            width: 387px;
        }
        .auto-style8 {
            width: 68px;
        }
        .auto-style9 {
            text-align: center;
        }
    </style>
</head>
<body style="height: 310px">
    <form id="form1" runat="server">
        <table align="center" class="auto-style1">
            <tr>
                <td class="auto-style2" colspan="2"><strong>Student Registration Form</strong></td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Student Name</td>
                <td>
                    <asp:TextBox ID="StdNameTxtBox" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Student No</td>
                <td>
                    <asp:TextBox ID="StdNoTxtBox" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Address</td>
                <td>
                    <asp:TextBox ID="AddressTxtBox" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Contact No</td>
                <td>
                    <asp:TextBox ID="ContactTxtBox" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">NIC</td>
                <td>
                    <asp:TextBox ID="NicTxtBox" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">DOB</td>
                <td>
                    <asp:TextBox ID="DobTxtBox" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Course</td>
                <td>
                    <asp:ListBox ID="CourseList" runat="server" Height="22px" Width="128px">
                        <asp:ListItem>Course 1</asp:ListItem>
                        <asp:ListItem>Course 2</asp:ListItem>
                        <asp:ListItem>Course 3</asp:ListItem>
                    </asp:ListBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4"></td>
                <td class="auto-style5"></td>
            </tr>
        </table>
        <div>
            <table class="auto-style6">
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td>
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" Width="67px" />
                    </td>
                </tr>
            </table>
        </div>
        <table class="auto-style6">
            <tr>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Student]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="std_no" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="163px" align="center">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="std_no" HeaderText="std_no" ReadOnly="True" SortExpression="std_no" />
                            <asp:BoundField DataField="std_name" HeaderText="std_name" SortExpression="std_name" />
                            <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                            <asp:BoundField DataField="contact_no" HeaderText="contact_no" SortExpression="contact_no" />
                            <asp:BoundField DataField="nic" HeaderText="nic" SortExpression="nic" />
                            <asp:BoundField DataField="dob" HeaderText="dob" SortExpression="dob" />
                            <asp:BoundField DataField="course" HeaderText="course" SortExpression="course" />
                        </Columns>
                        <EditRowStyle BackColor="#7C6F57" />
                        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#E3EAEB" />
                        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F8FAFA" />
                        <SortedAscendingHeaderStyle BackColor="#246B61" />
                        <SortedDescendingCellStyle BackColor="#D4DFE1" />
                        <SortedDescendingHeaderStyle BackColor="#15524A" />
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
