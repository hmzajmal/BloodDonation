<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Oracle_Forms.aspx.cs" Inherits="Oracle_Forms" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<link href="css/all.css" rel="stylesheet" />
</head>

<body>
    <form id="form1" runat="server">
    <div>
         <header >
        <div class="container">
          <div id="branding">
                <h1><span class="highlight">BLOOD</span> DONATING</h1>
            </div>

            <nav>
                <ul>
                    <li><a href="HOME.aspx">HOME</a></li>
                    <li><a href="About.aspx">ABOUT</a></li>
                    <li><a href="Services.aspx">SERVICES</a></li>
                     <li><a href="Donating.aspx">DONATING</a></li>
                     <li><a href="register.aspx">REGISTER</a></li>
                </ul>
            </nav>
        </div>
    </header>
         <div class="container">
        <div id="wrapper">
           
    <table class="auto-style1">
    <tr>
        <td class="auto-style3">
            <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server" CssClass="box"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">
            <asp:Label ID="Label2" runat="server" Text="Address"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">
            <asp:Label ID="Label3" runat="server" Text="Phone"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4">
            <asp:Label ID="Label4" runat="server" Text="Age"></asp:Label>
        </td>
        <td class="auto-style2">
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style2"></td>
    </tr>
    <tr>
        <td class="auto-style3">
            <asp:Label ID="Label5" runat="server" Text="Cnic"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">
            <asp:Label ID="Label6" runat="server" Text="BloodGroup"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server" Text="Button" CssClass="button" OnClick="Button1_Click" />
        </td>
        <td>&nbsp;</td>
    </tr>
</table>
            </div>
             </div>
          <footer>
       <div class="wrapper">
        <p>
            Blood Donating CopyRight 
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MyOracle %>" ProviderName="<%$ ConnectionStrings:MyOracle.ProviderName %>" SelectCommand="SELECT * FROM &quot;DONOR&quot; WHERE ((&quot;DONOR_NAME&quot; = ?) AND (&quot;ADDRESS&quot; = ?) AND (&quot;PHONE&quot; = ?) AND (&quot;AGE&quot; = ?) AND (&quot;CNIC&quot; = ?) AND (&quot;BLOODTYPE&quot; = ?))">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="DONOR_NAME" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="TextBox2" Name="ADDRESS" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="TextBox3" Name="PHONE" PropertyName="Text" Type="Decimal" />
                    <asp:ControlParameter ControlID="TextBox4" Name="AGE" PropertyName="Text" Type="Decimal" />
                    <asp:ControlParameter ControlID="TextBox5" Name="CNIC" PropertyName="Text" Type="Decimal" />
                    <asp:ControlParameter ControlID="TextBox6" Name="BLOODTYPE" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </p>
           <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">
               <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
               <EditRowStyle BackColor="#999999" />
               <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
               <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
               <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
               <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
               <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
               <SortedAscendingCellStyle BackColor="#E9E7E2" />
               <SortedAscendingHeaderStyle BackColor="#506C8C" />
               <SortedDescendingCellStyle BackColor="#FFFDF8" />
               <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
           </asp:GridView>
           <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MyOracle %>" ProviderName="<%$ ConnectionStrings:MyOracle.ProviderName %>" SelectCommand="SELECT * FROM &quot;DONOR&quot;"></asp:SqlDataSource>
        </div>
    </footer>
    </div>
    </form>
</body>
</html>
