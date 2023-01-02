<<<<<<< HEAD
﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="CV_Entity_ASP.Net.Default" %>

<!DOCTYPE html>
<html lang="zxx">
<head>
    <title>CV Project ASP.NET</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="utf-8" />
    <meta name="keywords" content="Conjoint Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
	SmartPhone Compatible web template, free WebDesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"
        integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
        crossorigin="anonymous">

        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
    <!-- Custom Theme files -->
    <link href="/web/css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
    <link href="/web/css/style.css" type="text/css" rel="stylesheet" media="all">
    <!-- font-awesome icons -->
    <link href="/web/css/fontawesome-all.min.css" rel="stylesheet">
    <!-- //Custom Theme files -->
    <!-- online-fonts -->
    <link href="//fonts.googleapis.com/css?family=Lato:100,300,400,700,900" rel="stylesheet">
    <!-- //online-fonts -->
</head>
<body>
    <div class="sidenav text-center">
        <div class="side_top">
            <img src="/web/images/about.jpg" alt="news image" class="img-fluid navimg">
            <h1 class="top_hd mt-2"><a href="/web/index.html">Ertuğrul Zengin</a></h1>
            <p class="top_hdp mt-2">Junior Full Stack Developer</p>
        </div>
        <!-- header -->
        <header>
            <div class="nav-top">
                <nav class="mnu mx-auto">
                    <label for="drop" class="toggle">Menu</label>
                    <input type="checkbox" id="drop">
                    <ul class="menu">
                        <li class="mt-sm-3"><a href="#home" class="scroll">Home</a></li>
                        <li class="mt-sm-3"><a href="#about" class="scroll">About</a></li>
                        <li class="mt-sm-3"><a href="#services" class="scroll">Ability</a></li>
                        <li class="mt-sm-3"><a href="#news" class="scroll">News</a></li>
                        <li class="mt-sm-3"><a href="#contact" class="scroll">Contact</a></li>
                    </ul>
                </nav>
            </div>
        </header>
        <!-- //header -->
    </div>
    <div class="main">
        <div class="banner-text-w3ls" id="home">
            <div class="container">
                <div class="mx-auto text-center">
                    <h3 class="mx-auto text-center" style="font-size: 75px">
                        <asp:Repeater ID="Repeater1" runat="server">
                            <ItemTemplate>
                                <%# Eval("BILGILER") %>
                            </ItemTemplate>
                        </asp:Repeater>
                    </h3>
                    <a class="btn btn-primary mt-lg-5 mt-3 agile-link-bnr" href="#about" role="button">ABOUT</a>
                </div>
            </div>
        </div>
        <!-- about -->
        <section class="slide-wrapper" id="about">
            <h2 class="w3_head mb-4">About</h2>

            <p class="iner mt-md-5" style="text-align: justify">

                <asp:Repeater ID="Repeater2" runat="server">

                    <ItemTemplate>
                        <%# Eval("EGITIM") %>
                    </ItemTemplate>

                </asp:Repeater>

            </p>
        </section>
        <!-- //about -->
        <!-- services -->
        <section class="services" id="services">
            <div class="container">
                <h3 class="w3_head mb-4 text-left">Abilities</h3>
                <ul class="list-unstyled mt-5">
                    <li>
                        <asp:Repeater ID="Repeater4" runat="server">
                            <ItemTemplate>
                                <div class="row">
                                    <div class="col-2 ic-lft">
                                        <span class="fa fa-code"></span>
                                    </div>
                                    <div class="col-10">
                                        <h6><%# Eval("YETENEK") %></h6>
                                        <br />
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>

                    </li>
                </ul>
            </div>
        </section>
        <!-- //services -->
        <!-- news -->
        <div class="news" id="news" style="text-align: justify">
            <h3 class="w3_head mb-4 text-left">Experiences</h3>
            <p class="iner mt-md-5 text-left" style="text-align: justify">

                <asp:Repeater ID="Repeater3" runat="server">
                    <ItemTemplate>
                        <%# Eval("ISDENEYIMLERI") %>
                    </ItemTemplate>
                </asp:Repeater>

            </p>



        </div>
        <!-- //news -->
        <!-- contact -->
        <section class="wedo" id="contact">
            <h3 class="w3_head mb-4 text-left">Contact</h3>
            <div class="contact_grid_right mt-5 mx-auto text-left">
                <form action="#" method="post" runat="server">
                    <div class="row contact_top">
                        <div class="col-sm-6">
                            <asp:TextBox ID="TextBox1" runat="server" placeholder="Name"></asp:TextBox>
                        </div>
                        <div class="col-sm-6">
                            <asp:TextBox ID="TextBox2" runat="server" placeholder="E-Mail"></asp:TextBox>
                        </div>
                    </div>
                    <asp:TextBox ID="TextBox3" runat="server" placeholder="Subject"></asp:TextBox>
                    <asp:TextBox ID="TextBox4" runat="server" placeholder="Message" TextMode="MultiLine" Height="30"></asp:TextBox>
                    <asp:Button ID="Button1" runat="server" CssClass="btn btn-success" Text="Let it go!" OnClick="Button1_Click" />
                    <asp:Button ID="Button2" runat="server" CssClass="btn btn-warning" Text="Anyway" OnClick="Button2_Click" />
                    <div class="clearfix"></div>
                </form>
            </div>
            <div class="cpy-right text-center">
                <p>
                    © 2018 Conjoint. All rights reserved | Design by
					<a href="http://w3layouts.com">W3layouts.</a>
                </p>
            </div>
        </section>
        <!-- //contact -->
    </div>
    <script>
        $(document).ready(function () {
            $("#Button1").click(function () {
                alert("Thanks for FEEEEEEEEDBACK!!");
            });
        });
    </script>
=======
﻿<!DOCTYPE html>
<html>
<head>
    <title>Entity CV Project</title>
    <!-- custom-theme -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Delightful Profile template Responsive, Login form web template,Flat Pricing tables,Flat Drop downs  Sign up Web Templates, Flat Web Templates, Login sign up Responsive web template, SmartPhone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!-- //custom-theme -->
    <link href="/web/css/style.css" rel="stylesheet" type="text/css" media="all" />
    <!-- js -->
    <script src="/web/js/jquery-2.2.3.min.js"></script>
    <!-- //js -->
    <!-- font-awesome-icons -->
    <link href="/web/css/font-awesome.css" rel="stylesheet">
    <!-- //font-awesome-icons -->
    <link href="/web/css/lightcase.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" type="text/css" href="/web/css/easy-responsive-tabs.css " />
    <link href="//fonts.googleapis.com/css?family=Arsenal:400,400i,700,700i&amp;subset=cyrillic,cyrillic-ext,latin-ext,vietnamese" rel="stylesheet">
</head>
<body>
    <div class="main">
        <h1>YAZILIM KIMLIK KARTI</h1>
        <div class="w3_agile_main_grids">
            <div class="w3layouts_main_grid_left">
                <div class="w3_main_grid_left_grid">
                    <h2>adsoyad</h2>
                    <p>FULL STACK DEVELOPER</p>
                    <div class="w3l_figure">
                        <img src="/web/images/1.png" alt=" " />
                    </div>
                    <ul class="agileinfo_social_icons">
                        <li><a href="#" class="w3_agileits_facebook"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                        <li><a href="#" class="wthree_twitter"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                        <li><a href="#" class="agileinfo_google"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
                    </ul>
                </div>
            </div>
            <div class="w3layouts_main_grid_right">
                <div class="w3ls_main_grid_right_grid">
                    <div id="parentHorizontalTab">
                        <ul class="resp-tabs-list hor_1">
                            <li><i class="fa fa-user" aria-hidden="true"></i>About me</li>
                            <li><i class="fa fa-briefcase" aria-hidden="true"></i>Projects</li>
                            <li><i class="fa fa-map-marker" aria-hidden="true"></i>Contact me</li>
                        </ul>
                        <div class="resp-tabs-container hor_1">
                            <div class="agileits_main_grid_right_grid">
                                <p>
                                    DENEME
                                </p>
                                <div class="wthree_tab_grid_sub">
                                    <div class="wthree_tab_grid_sub_left">
                                        <h5>321</h5>
                                        <p>Tweets</p>
                                    </div>
                                    <div class="wthree_tab_grid_sub_left">
                                        <h5>213</h5>
                                        <p>Followers</p>
                                    </div>
                                    <div class="wthree_tab_grid_sub_left">
                                        <h5>123</h5>
                                        <p>Following</p>
                                    </div>
                                    <div class="clear"></div>
                                </div>
                                <div class="agileits_skills">
                                    <h3>My Skills</h3>
                                    <div class="w3_agileits_skills_grid">
                                        <ul>
                                            <li>
                                                <label>Photoshop</label>
                                                <span></span>56%</li>
                                            <li>
                                                <label>Wordpress</label>
                                                <span></span>95%</li>
                                            <li>
                                                <label>HTML5</label>
                                                <span></span>91%</li>
                                            <li>
                                                <label>PHP</label>
                                                <span></span>98%</li>
                                            <li>
                                                <label>Multimedia</label>
                                                <span></span>85%</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="wthree_main_grid_right_grid">
                                <h3>My awesome work</h3>
                                <div class="w3_agileits_main_grid_work_grids">
                                    <div class="agile_main_grid_work_gridl">
                                        <a href="/web/images/1.jpg" class="showcase" data-rel="lightcase:myCollection:slideshow" title="Easy Profile">
                                            <img src="/web/images/1.jpg" alt=" " />
                                        </a>
                                    </div>
                                    <div class="agile_main_grid_work_gridl">
                                        <a href="/web/images/2.jpg" class="showcase" data-rel="lightcase:myCollection:slideshow" title="Easy Profile">
                                            <img src="/web/images/2.jpg" alt=" " />
                                        </a>
                                    </div>
                                    <div class="agile_main_grid_work_gridl">
                                        <a href="/web/images/3.jpg" class="showcase" data-rel="lightcase:myCollection:slideshow" title="Easy Profile">
                                            <img src="/web/images/3.jpg" alt=" " />
                                        </a>
                                    </div>
                                    <div class="agile_main_grid_work_gridl">
                                        <a href="/web/images/4.jpg" class="showcase" data-rel="lightcase:myCollection:slideshow" title="Easy Profile">
                                            <img src="/web/images/4.jpg" alt=" " />
                                        </a>
                                    </div>
                                    <div class="agile_main_grid_work_gridl">
                                        <a href="/web/images/5.jpg" class="showcase" data-rel="lightcase:myCollection:slideshow" title="Easy Profile">
                                            <img src="/web/images/5.jpg" alt=" " />
                                        </a>
                                    </div>
                                    <div class="agile_main_grid_work_gridl">
                                        <a href="/web/images/6.jpg" class="showcase" data-rel="lightcase:myCollection:slideshow" title="Easy Profile">
                                            <img src="/web/images/6.jpg" alt=" " />
                                        </a>
                                    </div>
                                    <div class="agile_main_grid_work_gridl">
                                        <a href="/web/images/7.jpg" class="showcase" data-rel="lightcase:myCollection:slideshow" title="Easy Profile">
                                            <img src="/web/images/7.jpg" alt=" " />
                                        </a>
                                    </div>
                                    <div class="agile_main_grid_work_gridl">
                                        <a href="/web/images/8.jpg" class="showcase" data-rel="lightcase:myCollection:slideshow" title="Easy Profile">
                                            <img src="/web/images/8.jpg" alt=" " />
                                        </a>
                                    </div>
                                    <div class="clear"></div>
                                </div>
                            </div>
                            <div class="wthree_main_grid_right_grid">
                                <h3>Contact Me</h3>
                                <form action="#" method="post">
                                    <div class="agileits_w3layouts_contact_left">
                                        <input type="text" name="Name" placeholder="Name" required="">
                                        <input type="email" name="Email" placeholder="Email" required="">
                                        <textarea placeholder="Message..." required=""></textarea>
                                    </div>
                                    <div class="agileits_w3layouts_contact_right">
                                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d77944.63844269582!2d4.828574749828488!3d52.37459125089173!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47c63fb5949a7755%3A0x6600fd4cb7c0af8d!2sAmsterdam%2C+Netherlands!5e0!3m2!1sen!2sin!4v1485595363072" style="border: 0"></iframe>
                                    </div> 
                                    <div class="clear"></div>
                                    <div class="agile_submit">
                                        <input type="submit" value="Send">
                                    </div>
                                </form>
                                <div class="wthree_tab_grid">
                                    <ul class="wthree_tab_grid_list">
                                        <li><i class="fa fa-mobile" aria-hidden="true"></i></li>
                                        <li>Mobile<span>+123 234 4342</span></li>
                                    </ul>
                                    <ul class="wthree_tab_grid_list">
                                        <li><i class="fa fa-envelope-o" aria-hidden="true"></i></li>
                                        <li>Mail Me<span><a href="mailto:info@example.com">info@example.com</a></span></li>
                                    </ul>
                                    <ul class="wthree_tab_grid_list">
                                        <li><i class="fa fa-map-marker" aria-hidden="true"></i></li>
                                        <li>Address<span>123 Avenue, Amsterdam.</span></li>
                                    </ul>
                                    <div class="clear"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="clear"></div>
        </div>
        <div class="agileits_copyright">
            <p>© 2017 Delightful Profile. All rights reserved | Design by <a href="http://w3layouts.com/">W3layouts</a></p>
        </div>
    </div>
    <script src="/web/js/easyResponsiveTabs.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            //Horizontal Tab
            $('#parentHorizontalTab').easyResponsiveTabs({
                type: 'default', //Types: default, vertical, accordion
                width: 'auto', //auto or any width like 600px
                fit: true, // 100% fit in a container
                tabidentify: 'hor_1', // The tab groups identifier
                activate: function (event) { // Callback function if tab is switched
                    var $tab = $(this);
                    var $info = $('#nested-tabInfo');
                    var $name = $('span', $info);
                    $name.text($tab.text());
                    $info.show();
                }
            });
        });
    </script>
    <!-- light-case -->
    <script src="/web/js/lightcase.js"></script>
    <script src="/web/js/jquery.events.touch.js"></script>
    <script>
        $('.showcase').lightcase();
    </script>
    <!-- //light-case -->

>>>>>>> bc09f0e4f0a20e91f030221102c9791873f94846
</body>
</html>
