<%@ Page Language="C#" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="Styles/DNP.css" />

</head>
<body>
    
<div class="header" style="text-align:right">
    <!-- REMOVE THE HYPER LINK OBJECTS USE LABELS AND HREF="" SO DIVS CAN BE USED W/ CLASS -->
    <div style="float:left"><img src="Images/logo.png" /></div> 
    <a class="button" href="/home.aspx">Home</a>
    <a class="button" href="Products.aspx">Products</a>
    <a class="button" onclick="document.getElementById('loginModal').style.display='block'">
        <asp:Label ID="cookieLoggedIn" runat="server" Text=""></asp:Label>
    </a>&emsp;
    <div id="loginModal" class="modal">
        <form class="modal-frame" runat="server" action="/action_page.php"> <!--DO NOT TAKE OUT ACTION IT MAKES THE MODAL WORK-->
       
            <br />
            <br />
            &emsp;<b>Sign in</b>
            
            <br />
            <div class="modal-frame-size">
                <span class="close" onclick="document.getElementById('loginModal').style.display='none'">&times;</span><!--Close button-->
                <asp:TextBox ID="username" runat="server" placeholder="Username"></asp:TextBox>
                <br />
                <asp:TextBox ID="password" runat="server" placeholder="Password"></asp:TextBox>
                <br />
                <br />
                <a id="login" class="button">Log in</a>
                <br />
                <a href="placeholder.aspx">Forgot password</a>
                
            </div>
        </form>
    </div>
    <script>
        var modal = document.getElementById('loginModal');

        window.onclick = function (event) {
            if (event.target == modal) {
                modal.style.display = "none";
            }
        }
    </script>
</div>
        <p>
            <asp:ListView ID="ListView1" runat="server">

                <ItemTemplate>
                    <p>
                    
                    </p>
                </ItemTemplate>
            </asp:ListView>
           

        </p>
    
    <p>

    </p>
</body>
</html>
