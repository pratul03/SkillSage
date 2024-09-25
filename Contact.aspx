<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="SkillSage.Contact" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Contact Us - SkillSage</title>
    <link href="CSS/contact.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="content-container">
            <h1>Contact Us</h1>
            <p>Please fill out the form below to submit your query:</p>
            <div class="form-container">
                <div>
                    <label for="txtName">Your Name:</label>
                    <asp:TextBox ID="txtName" runat="server" CssClass="form-input" placeholder="Enter your name"></asp:TextBox>
                </div>
                <div>
                    <label for="txtEmail">Your Email:</label>
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-input" TextMode="Email" placeholder="Enter your email"></asp:TextBox>
                </div>
                <div>
                    <label for="txtSubject">Subject:</label>
                    <asp:TextBox ID="txtSubject" runat="server" CssClass="form-input" placeholder="Enter the subject"></asp:TextBox>
                </div>
                <div>
                    <label for="txtMessage">Your Query:</label>
                    <asp:TextBox ID="txtMessage" runat="server" CssClass="form-textarea" TextMode="MultiLine" Rows="6" placeholder="Enter your query"></asp:TextBox>
                </div>
                <div class="form-submit">
                    <asp:Button ID="btnSubmit" runat="server" CssClass="btn-submit" Text="Submit Query" OnClick="SubmitQuery" />
                </div>
                <asp:Label ID="lblMessage" runat="server" CssClass="success-message"></asp:Label>
            </div>
        </div>
    </form>
</body>
</html>