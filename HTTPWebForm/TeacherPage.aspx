<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TeacherPage.aspx.cs" Inherits="HTTPWebForm.TeacherPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body {
            background-image: url(https://upload.wikimedia.org/wikipedia/en/1/1f/WomanYellingAtACat_meme.jpg);
            background-repeat: no-repeat;
            background-size: cover;
            cursor: url(https://cdn.custom-cursor.com/db/7213/32/pusheen-selfie-pointer.png), default !important;
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

        .welcomeVideo {
            display: block;
            width: 500px;
            height: 500px;
            margin: 0 auto;
            background-color: #777;
        }

        li {
            float: left;
        }

        #logoutButton {
            border-radius: 4px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="mainBody">
            <div class="navBar">
                <ul>
                    <li>
                        <asp:Button ID="logoutButton" runat="server" Text="Logout" OnClick="logoutButton_Click" /></li>
                </ul>
            </div>
            <asp:Label ID="greetingLabel" runat="server" Font-Size="Large" ForeColor="White"></asp:Label>
            <iframe class="welcomeVideo" src="https://www.youtube.com/embed/cYhLZSJGMPg" title="ASMR MUKBANG | BBQ Chicken &amp; Hot Fried Chicken Eating 자메이카 통다리구이 핫후라이드 치킨 치즈볼 감자튀김 소스 듬뿍! 먹방" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
        </div>
    </form>
</body>
</html>
