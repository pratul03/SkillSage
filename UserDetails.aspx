<%@ Page Title="" Language="C#" MasterPageFile="~/UserPage.Master" AutoEventWireup="true" CodeBehind="UserDetails.aspx.cs" Inherits="SkillSage.UserDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="https://fonts.googleapis.com/css2?family=Inter:ital,opsz,wght@0,14..32,100..900;1,14..32,100..900&display=swap" rel="stylesheet" />
    <style>
        * {
            font-family: "Inter", sans-serif;
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        /* General styles */
        body {
            background-color: #f4f4f9;
            color: #333;
        }

        p {
            letter-spacing: 0.4px;
            word-spacing: normal;
            color: #6d6d6d;
            font-weight: bold;
            text-align: center;
            font-size: 2.5em;
            margin-bottom: 20px;
        }

        /* Profile section */
        .profile-section {
            display: flex;
            justify-content: center;
            margin-top: 20px;
            margin-bottom: -20px;
        }

        .profile-image-container {
            width: 150px;
            height: 150px;
            border-radius: 50%;
            overflow: hidden;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease-in-out;
        }

        .profile-image-container:hover {
            transform: scale(1.05);
        }

        .profile-image-container img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        /* Personal details section */
        .details-table {
            width: 100%;
            max-width: 1000px;
            margin: 0 auto;
            border-collapse: collapse;
            background-color: #e7e7e7;
            box-shadow: 0px 4px 15px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
            overflow: hidden;
        }

        .details-table td {
            padding: 15px;
            border: 1px solid #e0e0e0;
            vertical-align: top;
            font-size: 1.2em;
            color: #000;
        }

        .details-table td label {
            font-weight: bold;
            color: #7c7c7c;
        }

        .details-table tr:last-child td {
            border-bottom: none;
        }

        /* Upload section */
        .upload-section {
            text-align: center;
            margin: 20px 0;
        }

        .upload-section label {
            font-size: 1.2em;
            color: #6d6d6d;
        }

        #FileUpload1 {
            margin-top: 10px;
        }

        #Label1 {
            color: red;
            display: block;
            margin-top: 10px;
            font-size: 1em;
        }

        /* Button styles */
        .button-container {
            text-align: center;
            margin-top: 30px;
        }

        .aspNetButton {
            background-color: #44bdac;
            color: white;
            padding: 10px 16px;
            font-size: 16px;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            box-shadow: 0px 6px 15px rgba(42, 157, 143, 0.4);
            transition: background-color 0.3s ease-in-out, box-shadow 0.3s ease;
            margin-bottom: 20px;
        }

        .aspNetButton:hover {
            font-weight: 500;
            background-color: #2a9d8f;
            -webkit-box-shadow: -11px 10px 5px -1px #dddddd;
            -moz-box-shadow: -11px 10px 5px -1px #dddddd;
            box-shadow: -11px 10px 5px -1px #dddddd;
        }

        .aspNetButton:focus {
            outline: none;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .details-table {
                width: 90%;
            }

            .details-table td {
                padding: 10px;
                font-size: 1em;
            }

            h1 {
                font-size: 2em;
            }

            h2 {
                font-size: 1.5em;
            }
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" ShowHeader="False" BorderStyle="None">
        <Columns>
            <asp:TemplateField>
                <ItemTemplate>
                    <table>
                        <tr>
                            <td>
                                <asp:Image ID="GridImage" Height="150" Width="150" ImageUrl='<%# Eval("image_name") %>' runat="server" />
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>

    <p>Personal Details</p>

    <table class="details-table">
        <tr>
            <td><label>Name:</label></td>
            <td><asp:Label ID="NameLabel" runat="server" Text="John Doe"></asp:Label></td>
        </tr>
        <tr>
            <td><label>Gender:</label></td>
            <td><asp:Label ID="GenderLabel" runat="server" Text="01 Jan 1990"></asp:Label></td>
        </tr>
        <tr>
            <td><label>User Id:</label></td>
            <td><asp:Label ID="UserIdLabel" runat="server" Text="1234 Street, City, Country"></asp:Label></td>
        </tr>
        <tr>
            <td><label>Email:</label></td>
            <td><asp:Label ID="EmailLabel" runat="server" Text="johndoe@example.com"></asp:Label></td>
        </tr>
    </table>

    <div class="upload-section">
        <label for="FileUpload1">Upload Your Image:</label>
        <asp:FileUpload ID="FileUpload1" runat="server" />
        <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
        <br />
    </div>

    <div class="button-container">
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="UPDATE" CssClass="aspNetButton" Visible="False" />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="SAVE" CssClass="aspNetButton" />
        <br />
        <br />
    </div>
</asp:Content>
