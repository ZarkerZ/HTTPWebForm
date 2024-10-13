<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="HTTPWebForm.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>
        body
        {
            background-image:url(https://media.tenor.com/qJRMLPlR3_8AAAAi/maxwell-cat.gif);
            background-repeat:no-repeat;
            background-position: center center;
            height: 100vh;
            margin: 0;
            cursor: url(https://cdn.custom-cursor.com/db/7213/32/pusheen-selfie-pointer.png), default !important;
        }
        .loginBox
        {
            background-image:url(https://i.ibb.co/v1MjSwg/lunaistabby.png);
            background-repeat: no-repeat;
            margin: auto;
            margin-top: 20px;
            width: 50%;
            border: 3px solid green;
            border-radius: 25px;
            padding: 10px;
        }
        .loginHeader,.credentialsTextBoxes
        {
            text-align:center;
        }
        #loginButton
        {
            width: 100px;
            border-radius: 5px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="mainBody">
            <div class="loginBox">
                <h1 class="loginHeader">Login</h1>
                <div class="credentialsTextBoxes">
                    <asp:Label runat="server">Username:</asp:Label>
                    <asp:TextBox ID="usernameTextBox" runat="server" placeholder="Enter Username" required></asp:TextBox>
                    <br />
                    <asp:RegularExpressionValidator ID="userChar" runat="server" ControlToValidate="usernameTextBox" ValidationExpression="^.{5,}$" Text="Username must be 5 characters long" Display="Dynamic"></asp:RegularExpressionValidator>                <br />
                    <asp:Label runat="server">Password:</asp:Label>
                    <asp:TextBox ID="passwordTextBox" runat="server" TextMode="Password" placeholder="Enter Password" required></asp:TextBox>
                    <br />
                    <asp:Label ID="errorMessage" runat="server" ForeColor="Red" Visible="false"></asp:Label>
                    <br />
                    <asp:Button ID="loginButton" runat="server" Type="Button" Text="Login" ToolTip="Login"/>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
