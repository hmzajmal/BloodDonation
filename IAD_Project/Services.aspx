<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Services.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
       <!-- form-div -->
     <div id="newletter">
        <div class="container">
    
    <div class="form-hrz">
     <!-- 
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
       
        -->
      
        
   </div>
    </div>

        </div>
   

    <div id="services">
        <div class="container">

            <div class="sec-1">

                <h3>Services</h3>

                <ul>
                    <li class="grey" onmouseover="light()" onmouseout="nolight()">
                        <h3>Donating policy</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Provident, labore natus voluptates quaerat perspiciatis optio aliquam impedit nesciunt reprehenderit laborum incidunt dolor obcaecati. Nobis iste enim, odit dolorum animi quibusdam.</p>
                    </li>
                    <li class="grey">
                        <h3> Maintenance</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Provident optio nemo esse recusandae? Laudantium cupiditate sequi minus hic est ipsum eligendi esse, assumenda eaque voluptatibus ducimus tempore id provident numquam.</p>
                    </li>
                    <li class="grey">
                        <h3>Health & Energy</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus cumque expedita, laudantium, non corporis sit possimus repellendus cum nesciunt reprehenderit unde. Ratione corrupti soluta, in ad voluptas natus nemo harum.</p>
                    </li>
                </ul>

            </div>
            <div class="sec-2 dark">

                    <h1>Get a Quote</h1>
                    <label for="">Name</label><br>
                <asp:TextBox ID="nm" runat="server" CssClass="input-text" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name is Required" ControlToValidate="nm" ForeColor="Red">*</asp:RequiredFieldValidator>
             
                    <label for="">Email</label> <br>
                <asp:TextBox ID="em" runat="server" CssClass="input-text" TextMode="Email"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Email is Required" ControlToValidate="em" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>      
                    <label for="">Message</label><br>
                 <asp:TextBox ID="msg" runat="server" CssClass="input-text" style="height: 200px;" TextMode="MultiLine"></asp:TextBox>
                   
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="msg" ErrorMessage="Please Type a message" ForeColor="Red"></asp:RequiredFieldValidator>
                   
                <asp:Button ID="btn" runat="server" Text="Submit" CssClass="button" style="margin-top: 10px; width: 91%; padding: 15px;" OnClick="btn_Click"/>
                    
            </div>
            <script>
                $(function() {


                    $("#btn").click(function() {

                        var name = $("#nm").val();
                        var email = $("#em").val();
                        var msg = $("#msg").val();

                        if (name == '') {
                            alert("Please Fill all the Fields....!!!");
                        }

                        if (email == '') {
                            alert("Please Fill all the Fields....!!!");
                        }

                        if (msg == '') {
                            alert("Please Fill all the Fields....!!!");
                        }
                    });

                });
            </script>

        </div>
    </div>

</asp:Content>

