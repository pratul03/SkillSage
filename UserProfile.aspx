<%@ Page Title="" Language="C#" MasterPageFile="~/UserPage.Master" AutoEventWireup="true" CodeBehind="UserProfile.aspx.cs" Inherits="SkillSage.UserProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/userProfile.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="form-container">
        <h2>YOUR INFORMATION</h2>
        <table cellpadding="3" cellspacing="3" class="form-table">
            <tr>
                <td class="form-label">NAME :</td>
                <td>
                    <asp:TextBox ID="NameText" runat="server" CssClass="form-input" Width="186px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="error-message" runat="server" ControlToValidate="NameText" Display="Dynamic" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="form-label">EMAIL-ID :</td>
                <td>
                    <asp:TextBox ID="EmailText" runat="server" CssClass="form-input" Width="186px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" CssClass="error-message" runat="server" ControlToValidate="EmailText" Display="Dynamic" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" CssClass="error-message" runat="server" ControlToValidate="EmailText" Display="Dynamic" ErrorMessage="Enter Valid Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="form-label">GENDER :</td>
                <td>
                    <asp:DropDownList ID="GenderDrop" runat="server" CssClass="form-input">
                        <asp:ListItem>Select Gender</asp:ListItem>
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                        <asp:ListItem>Others</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator InitialValue="Select Gender" ID="RequiredFieldValidator3" CssClass="error-message" runat="server" ControlToValidate="GenderDrop" Display="Dynamic" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="form-label">USER ID :</td>
                <td>
                    <asp:TextBox ID="UserIdText" runat="server" CssClass="form-input" Width="186px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" CssClass="error-message" runat="server" ControlToValidate="UserIdText" Display="Dynamic" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="form-label">ROLE :</td>
                <td>
                    <asp:TextBox ID="RoleText" runat="server" CssClass="form-input" Width="186px" ReadOnly="true"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" CssClass="error-message" runat="server" ControlToValidate="RoleText" Display="Dynamic" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="form-label">PASSWORD :</td>
                <td>
                    <asp:TextBox ID="PasswordText" runat="server" CssClass="form-input" Width="186px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" CssClass="error-message" runat="server" ControlToValidate="PasswordText" Display="Dynamic" ErrorMessage="Required" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="form-label">CONFIRM PASSWORD :</td>
                <td>
                    <asp:TextBox ID="ConfirmPasswordText" runat="server" CssClass="form-input" Width="186px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" CssClass="error-message" runat="server" ControlToValidate="ConfirmPasswordText" Display="Dynamic" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" CssClass="error-message" runat="server" ControlToCompare="PasswordText" ControlToValidate="ConfirmPasswordText" Display="Dynamic" ErrorMessage="Give Same Password" ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="SAVE" CssClass="save-btn" OnClick="Button1_Click" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
