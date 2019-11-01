<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MerchandiseSite.aspx.cs" Inherits="Week8_CodeJam.MerchandiseSite" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title>Merchandise Sales</title>   
        <link href="bittsreset.css" rel="stylesheet" type="text/css" />
        <link href="style.css" rel="stylesheet" type="text/css" />
        <link href="https://fonts.googleapis.com/css?family=Oswald|Roboto&display=swap" rel="stylesheet" />
        <script src="validate.js"></script>
    </head>
    <body>
        <div class="page-container">
            <header id="header">
                <div class="header-container">
                    <img id="logo" src="images/codejamlogo.jpg" alt="A symbol of a Jam" />
                    <h2 id="site-name"><a href="#">HTTP Week 8</a></h2>
                    <nav id="main-navigation">
                        <h3 class="hidden">Main Navigation</h3>
                        <ul id="header-menu">
                            <li><a href="#">Home</a></li>
                            <li><a href="#">Merchandise</a></li>
                        </ul>
                    </nav>
                </div>
            </header>
            <main id="main">
                <div class="main-container">
                    <h1 id="main-heading">Merchandise</h1>
                    <figure id="side-column1">
                        <div>
                            <span id="color">A white </span>
                            <span id="size">small </span>
                            <span id="style">plain Tshirt</span>
                        </div>                        
                        <img id="product-picture" src="images/tshirt-purple.png" alt="A picture of purple Tshirt" />
                    </figure>
                    <section id="form-section">
                        <form id="order_form" runat="server">
                            <div>
                                Select Colour:
                                <div>
                                    <img id="grey" src="images/grey.png" alt="The grey color" />
                                    <img id="black" src="images/black.png" alt="The black color" />
                                    <img id="red" src="images/red.png" alt="The red color" />
                                    <img id="blue" src="images/blue.png" alt="The blue color" />
                                    <img id="green" src="images/green.png" alt="The green color" />
                                    <img id="purple" src="images/purple.png" alt="The purple color" />
                                </div>
                                <div>
                                    <label for="Tshirt_size">Choose size:</label>
                                    <asp:DropDownList runat="server" ID="Tshirt_size">                                        
                                        <asp:ListItem Text="Small" Value="small"></asp:ListItem>
                                        <asp:ListItem Text="Medium" Value="medium"></asp:ListItem>
                                        <asp:ListItem Text="Large" Value="large"></asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator runat="server" ErrorMessage="Please choose a size" EnableClientScript="True" ControlToValidate="Tshirt_size"></asp:RequiredFieldValidator>
                                </div>
                                <div>
                                    <label for="Tshirt_style">Style:</label>
                                    <asp:DropDownList runat="server" ID="Tshirt_style">                                        
                                        <asp:ListItem Text="Plain" Value="plain"></asp:ListItem>
                                        <asp:ListItem Text="Crew cut (+$2.00)" Value="crew cut"></asp:ListItem>
                                        <asp:ListItem Text="V neck (+$5.00)" Value="V neck"></asp:ListItem>
                                        <asp:ListItem Text="Baseball (+$1.00)" Value="baseball"></asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator runat="server" ErrorMessage="Please choose a style" EnableClientScript="True" ControlToValidate="Tshirt_style"></asp:RequiredFieldValidator>
                                </div>
                                <div>
                                        <label for="customer_name">Name:</label>
                                        <asp:TextBox runat="server" id="customer_name"></asp:TextBox>
                                        <asp:RequiredFieldValidator runat="server" ErrorMessage="Please enter your name" EnableClientScript="True" ControlToValidate="customer_name"></asp:RequiredFieldValidator>
                                </div>
                                <div>
                                <label for="customer_address">Address:</label>
                                </div>
                                <div>
                                    <textarea id="customer_address" name="customer_address" cols="35" rows="5" runat="server"></textarea>
                                    <asp:RequiredFieldValidator runat="server" ErrorMessage="Please enter your address" EnableClientScript="True" ControlToValidate="customer_address"></asp:RequiredFieldValidator>
                                </div>
                                <div>
                                    <label>Delivery type:</label>
                                    <asp:RadioButtonList id="delivery_type" runat="server">
                                        <asp:ListItem Text="Normal" Value="Normal"></asp:ListItem>
                                        <asp:ListItem Text="Express (+$10.00)" Value="Express"></asp:ListItem>
                                    </asp:RadioButtonList>
                                    <asp:RequiredFieldValidator runat="server" ErrorMessage="Please choose your delivery type" EnableClientScript="True" ControlToValidate="delivery_type"></asp:RequiredFieldValidator>
                                </div>
                                <div>
                                    <asp:Button runat="server" Text="Order" />
                                </div>                            
                            </div>
                            <div>
                                <asp:ValidationSummary runat="server" ShowSummary="true"/>
                            </div>
                            <div runat="server" id="merchandise_summary"></div>
                        </form>
                    </section>
                </div>
            </main>
        </div>    
    </body>
</html>