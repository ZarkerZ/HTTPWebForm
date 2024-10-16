<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminPage.aspx.cs" Inherits="HTTPWebForm.AdminPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>
        body {
            background-image: url(https://www.icegif.com/wp-content/uploads/2022/09/icegif-379.gif);
            background-repeat: no-repeat;
            background-size: cover;
            cursor: url(https://cdn.custom-cursor.com/db/7213/32/pusheen-selfie-pointer.png), default !important;
        }

        .welcomeVideo {
            display: block;
            width: 500px;
            height: 500px;
            margin: 0 auto;
            background-color: #777;
        }

        ul {
            list-style-type: none;
            margin-left: -10px;
            margin-right: -10px;
            margin-top: -10px;
            padding: 10px;
            overflow: hidden;
            background-color: #333;
        }

        li {
            float: left;
        }

        #logoutButton {
            border-radius: 4px;
        }
    </style>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="navBar">
            <ul>
                <li>
                    <asp:Button ID="logoutButton" runat="server" Text="Logout" OnClick="logoutButton_Click" /></li>
            </ul>
        </div>
        <div class="mainBody">
            <asp:Label ID="greetingLabel" runat="server" Font-Size="Large"></asp:Label>
            <br />
            <iframe class="welcomeVideo" src="https://www.youtube.com/embed/bN1shALfJqg" title="Oiiaioooooiai cat meme psytrance remix" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
        </div>
    </form>
</body>
</html>
