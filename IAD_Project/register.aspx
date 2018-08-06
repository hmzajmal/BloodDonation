
<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
     <div id="wrapper">
	
			<div id="username_div">
				<label>Name</label> <br>
		    <!--	<input type="text" name="username" class="textInput"/> -->

                <asp:TextBox ID="name" class="textInput" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter Username" ControlToValidate="name" ForeColor="Red"></asp:RequiredFieldValidator>
			</div>
			<div id="email_div">
				<label>Email</label> <br>
			<!--	<input type="email" name="email" class="textInput"/> -->
                <asp:TextBox ID="email" class="textInput" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Please Enter valid Email" ControlToValidate="email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Enter The email" ControlToValidate="email" ForeColor="Red"></asp:RequiredFieldValidator>
			</div>
			<div id="bloodgroup_div">
				<label>Choose Blood Group</label> <br>
			<!--	<input type="password" name="password" class="textInput"/> -->
                <asp:DropDownList ID="BloodGroup" class="textInput" style="height:50px;" runat="server">
                    <asp:ListItem>Select Blood Group</asp:ListItem>
                    <asp:ListItem>A+</asp:ListItem>
                    <asp:ListItem>B+</asp:ListItem>
                    <asp:ListItem>AB+</asp:ListItem>
                    <asp:ListItem>O+</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please choose a Blood Type" ControlToValidate="BloodGroup" InitialValue="Select Blood Group" ForeColor="Red"></asp:RequiredFieldValidator>
			</div>
			<div id="address_div">
				<label>Address</label> <br>
			<!--	<input type="password" name="password_confirm" class="textInput"/> -->
                <asp:TextBox ID="address"  class="textInput" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please Enter the Address" ControlToValidate="address" ForeColor="Red"></asp:RequiredFieldValidator>
				
			</div>

         			<div id="phone_no">
				<label>Phone No:</label> <br>
		
                <asp:TextBox ID="phone"  class="textInput" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please Enter the Phone Number" ControlToValidate="phone" ForeColor="Red"></asp:RequiredFieldValidator>
                         
				
			</div>

		<!--	<input type="submit" name="register" value="Register" class="btn" />  -->
		
	        <asp:Button ID="submit" class="btn" runat="server" OnClick="Button1_Click" Text="Register" />
		
	</div>


     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IAD_ConnectionString %>" SelectCommand="SELECT * FROM [Record]"></asp:SqlDataSource>


</asp:Content>

