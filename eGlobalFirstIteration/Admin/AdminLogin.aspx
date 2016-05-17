<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="eGlobalFirstIteration.Admin.AdminLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Login</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link href="Shared/Layout/css/paper.css" rel="stylesheet" type="text/css" />
    <link href="Shared/Layout/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="Shared/Layout/css/custom.css" rel="stylesheet" type="text/css" />
</head>
<body id="admin-login">
    <form id="form1" runat="server">
    <div class="container" id="login-form">
        <div class="row">
            <div class="col-sm-4"></div>
            <div class="col-sm-4">
                 <h1 class="text-center">E Global</h1>
                    
                <p class="text-center text-danger">
                    <asp:Label ID="errorLabel" runat="server" Text=""></asp:Label>                   
                </p>
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <p class="panel-title text-center"><b>Login</b></p>
                    </div>
                    <div class="panel-body">
                        <div class="form-group">
                            <asp:Label ID="usernameLabel" runat="server" Text="Username"></asp:Label>
                            <asp:TextBox ID="username" runat="server" CssClass="form-control"></asp:TextBox>
                            <p class="text-left text-danger">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="username" ErrorMessage="Require Username"></asp:RequiredFieldValidator>
                            </p>
                        </div>
                        
                        <div class="form-group">
                            <asp:Label ID="passwordLabel" runat="server" Text="Password"></asp:Label>
                            <asp:TextBox ID="password" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                            <p class="text-left text-danger">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="password" ErrorMessage="Require Password"></asp:RequiredFieldValidator>
                            </p>
                        </div>
                    </div>
                    <div class="panel-footer">
                        <asp:Button ID="login" runat="server" Text="Login" CssClass="btn btn-block btn-success" OnClick="login_Click" />    
                    </div>
                </div>
            </div>
            <div class="col-sm-4"></div>
        </div>
    </div>


    </form>

    
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="Shared/Layout/js/jquery-2.1.4.min.js" type="text/javascript"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="Shared/Layout/js/bootstrap.min.js" type="text/javascript"></script>
</body>
</html>
