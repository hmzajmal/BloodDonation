<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <div id="showcase">
       
        <div class="container">
          
            <h1 style="color: #ac0606">
                DONATE YOUR BLOOD
            </h1>
            <p>
                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio atque sequi sed voluptate neque repellat officia nesciunt dignissimos, eos, officiis veritatis unde alias! Quas dolore ipsum quisquam, totam unde. Doloremque.
                t dignissimos, eos, officiis veritatis unde alias! Quas dolore ipsum quisquam, totam unde. Doloremque.
            </p>
        </div>
    </div>
    <!-- form-div -->
    <div id="newletter">
        <div class="container">
       
    <div class="form-hrz">
   
        <asp:TextBox ID="name"  runat="server" placeholder="Name" CssClass="info" required></asp:TextBox>
        <asp:TextBox ID="phone"  runat="server" placeholder="Phone" CssClass="info" required ></asp:TextBox>
        <asp:TextBox ID="address"  runat="server" placeholder="Address" CssClass="info" required></asp:TextBox>
        <asp:DropDownList ID="city"  runat="server">
            <asp:ListItem>Rawalpindi</asp:ListItem>
            <asp:ListItem>Islamabad</asp:ListItem>
        </asp:DropDownList>
        <asp:DropDownList ID="blood" runat="server">
            <asp:ListItem>A+</asp:ListItem>
            <asp:ListItem>A-</asp:ListItem>
            <asp:ListItem>B+</asp:ListItem>
            <asp:ListItem>B-</asp:ListItem>
            <asp:ListItem>O+</asp:ListItem>
            <asp:ListItem>O-</asp:ListItem>
            <asp:ListItem>AB+</asp:ListItem>
            <asp:ListItem>AB-</asp:ListItem>
        </asp:DropDownList>
        
        <asp:Button ID="submit"  runat="server" Text="Submit" CssClass="button" OnClick="submit_Click" />
       

      
        
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IAD_ConnectionString %>" SelectCommand="SELECT * FROM [Record] WHERE ([BloodGroup] = @BloodGroup)">
            <SelectParameters>
                <asp:ControlParameter ControlID="blood" Name="BloodGroup" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
       

      
        
   </div>
    </div>

        </div><!-- form-div -->
 <center>
    <div class="container" style="align-content:center">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal" Height="161px" Visible="False" Width="579px">
                    <Columns>
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                        <asp:BoundField DataField="BloodGroup" HeaderText="BloodGroup" SortExpression="BloodGroup" />
                        <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                        <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                    </Columns>
                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#242121" />
                </asp:GridView>
    </div>
     </center>
    <div id="boxes">
        <div class="container">

            <div class="box">
                
                <img src="img/building.png" alt="">
                <h3>Donate Blood</h3>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quod saepe odit, blanditiis ex adipisci quis itaque voluptatem fugit optio iusto. Similique eveniet, distinctio necessitatibus quis sequi error, nemo deserunt tempore!</p>
            </div>
            
            <div class="box">
                <img src="img/building%20(1).png" alt="">
                <h3>Blood Donate</h3>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellendus qui sint error neque odio repudiandae, magnam maxime, mollitia nemo nam ducimus eaque! Nesciunt inventore tempora facere! Iure deleniti quia, temporibus.</p>
            </div>
            <div class="box">
                <img src="img/building%20(2).png" alt="">
                <h3>Donate Blood</h3>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eaque odio quam numquam dolores velit, error quis corporis assumenda nesciunt. Odio ad ipsam est deleniti quisquam asperiores tempora? Et, illum dolor.</p>
            </div>

        </div>
    </div>
</asp:Content>

