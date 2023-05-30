<%@ Page Title="About" Language="C#" EnableEventValidation="false" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="about.aspx.cs" Inherits="D2HTShop.about"%>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="about-us">
            <div class="who-we-are">
                <h3>Who We Are</h3>
                <span>Lorem Ipsum is simply dummy text of the printing 
                    and typesetting industry. Lorem Ipsum has been 
                    the industry's standard dummy text ever since 
                    the 1500s, when an unknown printer took a galley 
                    of type and scrambled it to make a type specimen 
                    book.</span>
            </div>

                <div class="small-container">
                    <div class="row">
                        <div class="col-4">
                            <div class="card">
                                <div class="card-img">
                                    <img src="./images/avatar1.jpg">
                                </div>
                                <div class="card-body">
                                    <h3>Captain</h3>
                                    <span>Web Designer</span>
                                    <p>Lorem Ipsum is simply dummy text of the printing 
                                    and typesetting industry. Lorem Ipsum has been 
                                    the industry's standard du</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-4">
                            <div class="card">
                                <div class="card-img">
                                    <img src="./images/avatar2.jpg">
                                </div>
                                <div class="card-body">
                                    <h3>Hey!!Bro</h3>
                                    <span>Web Designer</span>
                                    <p>Lorem Ipsum is simply dummy text of the printing 
                                    and typesetting industry. Lorem Ipsum has been 
                                    the industry's standard du</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-4">
                            <div class="card">
                                <div class="card-img">
                                    <img src="./images/avatar3.jpg">
                                </div>
                                <div class="card-body">
                                    <h3>Are you ok?</h3>
                                    <span>Web Designer</span>
                                    <p>Lorem Ipsum is simply dummy text of the printing 
                                    and typesetting industry. Lorem Ipsum has been 
                                    the industry's standard du</p>
                                </div>
                            </div>
                        </div>
    
                        <div class="col-4">
                            <div class="card">
                                <div class="card-img">
                                    <img src="./images/avatar4.jpg">
                                </div>
                                <div class="card-body">
                                    <h3>What do you do</h3>
                                    <span>Web Designer</span>
                                    <p>Lorem Ipsum is simply dummy text of the printing 
                                    and typesetting industry. Lorem Ipsum has been 
                                    the industry's standard du</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
        </div>
        <!-- JS-->
        <script>
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



    
