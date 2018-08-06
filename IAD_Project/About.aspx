<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
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
       

      
        
   </div>
    </div>

        </div><!-- form-div -->


    <div id="about">
        <div class="container">

            <div class="sec-1">

                <h3>About Us</h3>
                <p style="padding: 20px;">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quod saepe odit, blanditiis ex adipisci quis itaque voluptatem fugit optio iusto. Similique eveniet, distinctio necessitatibus quis sequi error, nemo deserunt tempore! sLorem ipsum dolor sit amet, consectetur adipisicing elit. Maxime sapiente tempore iure commodi doloribus, et corporis explicabo qui quasi necessitatibus optio assumenda quis rem, iste temporibus est aliquam! Deleniti, at? Lorem Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laborum quae officia doloremque pariatur ea esse, neque, illum dolor aliquid sed. Ducimus id, harum nobis accusantium sed quo distinctio minima nesciunt? dolor sit amet, consectetur adipisicing elit. Assumenda aperiam, deleniti minima numquam distinctio voluptatem molestiae odio perferendis fugit quos repudiandae quia quae, repellendus, minus in, expedita laboriosam dolorem. Officia! Quod saepe odit, blanditiis ex adipisci quis itaque voluptatem fugit optio iusto. Similique eveniet, distinctio necessitatibus quis sequi error, nemo deserunt tempore! sLorem ipsum dolor sit amet, consectetur adipisicing elit. Maxime nobis accusantium sed quo distinctio minima nesciunt? dolor sit amet, consectetur adipisicing elit. Assumenda aperiam, deleniti minima numquam distinctio voluptatem molestiae odio perferendis fugit quos repudiandae quia quae, repellendus, minus in, expedita laboriosam dolorem. Officia!</p>
                <div class="sec-1 dark">
                    <p id="myInput" onclick="myFunction()">
                        Quod saepe odit, blanditiis ex adipisci quis itaque voluptatem fugit optio iusto. Similique eveniet, distinctio necessitatibus quis sequi error, nemo deserunt tempore! Lorem ipsum dolor sit amet, consectetur adipisicing elit. Tempore temporibus nobis tenetur ut. Ad mollitia aperiam repellendus, excepturi iste placeat perferendis laudantium soluta consectetur est dolore corporis ullam, eos! Animi. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sapiente debitis, fuga nostrum neque nobis, repellat temporibus nam beatae impedit cum aliquam cumque vitae nulla, eius consectetur. Tenetur illo, odit cupiditate. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Libero dolorem odio voluptas. Quia libero tempore laudantium impedit nam saepe animi doloremque alias aliquid cumque voluptates,
                    </p>
                </div>
            </div>



            <div class="sec-2 dark">

                <h3>What we do</h3>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellendus qui sint error neque odio repudiandae, magnam maxime, mollitia nemo nam ducimus eaque! Nesciunt inventore tempora facere! Iure deleniti quia, temporibus.</p>
            </div>



        </div>
    </div>
</asp:Content>

