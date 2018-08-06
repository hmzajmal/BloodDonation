<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="a.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  
        
        <h1 style="text-align: center; margin-top: 10%;">Your form is submitted. Thankyou !!</h1>
        

    
    <script>
        setTimeout('window.location="Home.aspx";',3000);
    </script>
</asp:Content>

