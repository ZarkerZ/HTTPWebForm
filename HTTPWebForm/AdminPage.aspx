<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminPage.aspx.cs" Inherits="HTTPWebForm.AdminPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>
        body
        {
            cursor: url(https://cdn.custom-cursor.com/db/7213/32/pusheen-selfie-pointer.png), default !important;
        }
        .welcomeVideo
        {
            display: block;
            margin: 0 auto;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
        }
    </style>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="navBar">
            <ul>
                <li>
                    <asp:Button ID="logoutButton" runat="server" Text="Logout" OnClick="logoutButton_Click" />
                </li>
            </ul>
        </div>
        <div class="mainBody">
            <asp:Label ID="greetingLabel" runat="server" Font-Size="Large"></asp:Label>
            <br />
            <iframe class="welcomeVideo" width="1280" height="720" src="https://www.youtube.com/embed/bN1shALfJqg" title="Oiiaioooooiai cat meme psytrance remix" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
        </div>
    </form>
</body>
</html>
