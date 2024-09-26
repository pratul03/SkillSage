<%@ Page Title="" Language="C#" MasterPageFile="~/UserPage.Master" AutoEventWireup="true" CodeBehind="ViewJobs.aspx.cs" Inherits="SkillSage.ViewJobs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- Correctly include external CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link href="CSS/viewJob.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container mt-4">
        <!-- Message at the top right corner -->
        <div class="message-container">
            <asp:Label ID="lblMessage" runat="server" CssClass="alert" Visible="false" />
        </div>

        <h2 class="mb-4 text-center">Available Jobs</h2>

        <!-- Responsive job listing -->
        <div class="row">
            <asp:Repeater ID="rptJobs" runat="server">
                <ItemTemplate>
                    <div class="col-lg-4 col-md-6 col-sm-12 mb-4 d-flex justify-content-center">
                        <div class="card job-card">
                            <div class="card-body">
                                <h3 class="card-title"><%# Eval("title") %></h3>
                                <p class="card-text"><strong>Description:</strong> <%# Eval("description") %></p>
                                <p class="card-text"><strong>Skills:</strong> <%# Eval("skills") %></p>
                                <p class="card-text"><strong>Duration:</strong> <%# Eval("duration") %></p>
                                <p class="card-text"><strong>Payment:</strong> $<%# Eval("payment") %></p>
                                <p class="card-text"><strong>Company Name:</strong> <%# Eval("company_name") %></p>
                                <asp:Button ID="btnShowInterest" runat="server" Text="Show Interest"
                                    CommandArgument='<%# Eval("Id") + "," + Eval("employer_id") %>'
                                    OnClick="btnShowInterest_Click" CssClass="btn" />
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>

    <!-- Bootstrap JS and Popper JS -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>
</asp:Content>
