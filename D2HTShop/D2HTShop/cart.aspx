<%@ Page Title="Cart" Language="C#" EnableEventValidation="false" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="cart.aspx.cs" Inherits="D2HTShop.cart"%>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <!--Cart-->
    <div class="small-container cart-page">
        <form id="formcart" runat="server">
            You have: <asp:Label ID="TotalProduct" runat ="server"></asp:Label> Products

            <table>
            <tr>
                <th>Product</th>
                <th>Quantity</th>
                <th>Subtotal</th>
            </tr>
        <asp:ListView ID="cartList" runat ="server">
            <ItemTemplate>
                <tr>
                    <td>
                        <div class="cart-info">
                            <img src="<%# Eval("img") %>" alt="product image" >
                            <div>
                                 <p><%# Eval("name") %></p>
                                 <a href="product-detail.aspx?id=<%# Eval("id") %>">Detail</a>
                                 <small>Price: <%# Eval("price") %></small>
                                 <br>
                                 <asp:Button runat="server" OnClick="btnRemove_Click" CommandArgument='<%# Eval("id") %>' Text="Remove" />
                             </div>
                         </div>
                    </td>
                    <td><input type="number" value="1"></td>
                    <td>$500</td>
                </tr>
            </ItemTemplate>
        </asp:ListView>
            
                   <!-- <tr>
                        <td>
                            <div class="cart-info">
                                <img src="./images/laptop4.png" >
                                <div>
                                    <p>MacBook Pro 2022</p>
                                    <small>Price: $500</small>
                                    <br>
                                    <a href="">Remove</a>
                                </div>
                            </div>
                        </td>
                        <td><input type="number" value="1"></td>
                        <td>$500</td>
                    </tr>
                    <tr>
                        <td>
                            <div class="cart-info">
                                <img src="./images/laptop5.png" >
                                <div>
                                    <p>MacBook Pro 2022</p>
                                    <small>Price: $500</small>
                                    <br>
                                    <a href="">Remove</a>
                                </div>
                            </div>
                        </td>
                        <td><input type="number" value="1"></td>
                        <td>$500</td>
                    </tr> -->
                </table>

                <div class="total-price">
                    <table>
                        <tr>
                            <td>Subtotal</td>
                            <td>$1500</td>
                        </tr>
                        <tr>
                            <td>Tax</td>
                            <td>$100</td>
                        </tr>
                        <tr>
                            <td>Total</td>
                            <td>$<asp:Label ID="TotalPriceProduct" runat="server" Text=""></asp:Label></td>
                            <td>$1600</td>
                        </tr>
                        <tr>
                            <td>
                                <a href="" class="btn">Proceed To Checkout &#8594;</a>
                            </td>
                        </tr>
                        
                    </table>
                </div>

        </form>
    </div>
    <!-- JS-->
    <script>
        //Menu
        var MenuItems = document.getElementById("MenuItems");
        MenuItems.style.maxHeight = "0px";

        function menutoggle() {
            if (MenuItems.style.maxHeight == "0px") {
                MenuItems.style.maxHeight = "200px";
            } else {
                MenuItems.style.maxHeight = "0px";
            }
        }

        function search() {
            var searchBox = document.querySelector('.search-box');
            if (searchBox.style.display == "none") {
                searchBox.style.display = "block";
            } else {
                searchBox.style.display = "none";
            }

        }
    </script>
</asp:Content>




        
        

