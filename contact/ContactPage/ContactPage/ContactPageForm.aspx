﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ContactPageForm.aspx.cs" Inherits="ContactPage.ContactPageForm" %>

<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <meta name="description" content="">
    <meta name="author" content="">

    <title>Pod Talk - Contact Page</title>

    <!-- CSS FILES -->
    <link rel="preconnect" href="https://fonts.googleapis.com">

    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

    <link
        href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400&family=Sono:wght@200;300;400;500;700&display=swap"
        rel="stylesheet">

    <link rel="stylesheet" href="css/bootstrap.min.css">

    <link rel="stylesheet" href="css/bootstrap-icons.css">

    <link rel="stylesheet" href="css/owl.carousel.min.css">

    <link rel="stylesheet" href="css/owl.theme.default.min.css">

    <link href="css/templatemo-pod-talk.css" rel="stylesheet">
    <!--

TemplateMo 584 Pod Talk

https://templatemo.com/tm-584-pod-talk

-->
</head>

<body>
           <form id="form1" runat="server">

    <main>
<%--        <form id="formnav" runat="server">--%>
  <asp:Panel runat="server" CssClass="navbar navbar-expand-lg">
    <div class="container">
        <asp:HyperLink runat="server" NavigateUrl="index.aspx" CssClass="navbar-brand me-lg-5 me-0">
            <asp:Image runat="server" ImageUrl="images/logo.png" CssClass="logo-image img-fluid" AlternateText="logo" />
        </asp:HyperLink>

        <asp:LinkButton runat="server" CssClass="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </asp:LinkButton>

        <asp:Panel runat="server" CssClass="collapse navbar-collapse" ID="navbarNav">
            <ul class="navbar-nav ms-lg-auto">
                <li class="nav-item">
                    <asp:HyperLink runat="server" NavigateUrl="index.aspx" CssClass="nav-link">Home</asp:HyperLink>
                </li>
                <li class="nav-item">
                    <asp:HyperLink runat="server" NavigateUrl="about.aspx" CssClass="nav-link">About</asp:HyperLink>
                </li>
                <li class="nav-item" >
                    <asp:HyperLink runat="server" NavigateUrl="contact.aspx" CssClass="nav-link active">Contact</asp:HyperLink>
                </li>
            </ul>
            <asp:HyperLink runat="server" NavigateUrl="#section_3" CssClass="btn custom-btn custom-border-btn smoothscroll ms-4">LOGIN</asp:HyperLink>
        </asp:Panel>
    </div>
</asp:Panel>
<%--</form>--%>

        <header class="site-header d-flex flex-column justify-content-center align-items-center">
            <div class="container">
                <div class="row">

                    <div class="col-lg-12 col-12 text-center">

                        <h2 class="mb-0">Contact Page</h2>
                    </div>

                </div>
            </div>
        </header>


        <section class="section-padding" id="section_2">
            <div class="container">
                <div class="row justify-content-center">

                    <div class="col-lg-5 col-12 pe-lg-5">
                        <div class="contact-info">
                            <h3 class="mb-4">We love to help you. Get in touch</h3>

                            <p class="d-flex border-bottom pb-3 mb-4">
                                <strong class="d-inline me-4">Phone:</strong>
                                <span>0771234567</span>
                            </p>

                            <p class="d-flex border-bottom pb-3 mb-4">
                                <strong class="d-inline me-4">Email:</strong>
                                <a href="#">codesphere@gmail.com</a>
                            </p>

                            <p class="d-flex">
                                <strong class="d-inline me-4">Location:</strong>
                                <span>Jordan / Irbid</span>
                            </p>
                        </div>
                    </div>

                    <div class="col-lg-5 col-12 mt-5 mt-lg-0">
                        <iframe class="google-map"
                            src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.819917806043!2d103.84793601429608!3d1.281807962148459!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31da190c2c94ccb3%3A0x11213560829baa05!2sTwitter!5e0!3m2!1sen!2smy!4v1669212183861!5m2!1sen!2smy"
                            width="100%" height="300" style="border:0;" allowfullscreen="" loading="lazy"
                            referrerpolicy="no-referrer-when-downgrade"></iframe>
                    </div>

                </div>
            </div>
        </section>

     <%--   <section class="contact-section section-padding pt-0">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-12 mx-auto">
                        <div class="section-title-wrap mb-5">
                            <h4 class="section-title">Ask Us Any Question </h4>
                        </div>

                        <div class="custom-form contact-form">
                            <div class="row">
                                <div class="col-lg-6 col-md-6 col-12">
                                    <div class="form-floating">
                                        <asp:TextBox ID="FullName" runat="server" CssClass="form-control" placeholder="Full Name" required="true"></asp:TextBox>
                                        <label for="FullName">Full Name</label>
                                    </div>
                                </div>

                                <div class="col-lg-6 col-md-6 col-12">
                                    <div class="form-floating">
                                        <asp:TextBox ID="Email" runat="server" CssClass="form-control" placeholder="Email address" required="true"></asp:TextBox>
                                        <label for="Email">Email address</label>
                                    </div>
                                </div>

                                <div class="col-lg-12 col-12">
                                    <div class="form-floating">
                                        <asp:TextBox ID="Message" runat="server" TextMode="MultiLine" CssClass="form-control" placeholder="Describe message here" required="true"></asp:TextBox>
                                        <label for="Message">Describe message here</label>
                                    </div>
                                </div>

                                <div class="col-lg-4 col-12 ms-auto">
                                    <asp:Button ID="Submit" runat="server" CssClass="form-control" Text="Submit" OnClick="Submit_Click" />
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </section>
  --%>

<%--        <section class="contact-section section-padding pt-0">
            <div class="container">
                <div class="row">

                    <div class="col-lg-8 col-12 mx-auto">
                        <div class="section-title-wrap mb-5">
                            <h4 class="section-title">Ask Us Any Question </h4>
                        </div>

                        <form action="#" method="post" class="custom-form contact-form" role="form">
                            <div class="row">
                                <div class="col-lg-6 col-md-6 col-12">
                                    <div class="form-floating">

                                        <input type="text" name="full-name" id="full-name" class="form-control"
                                            placeholder="Full Name" required="">

                                        <label for="floatingInput">Full Name</label>
                                    </div>
                                </div>

                                <div class="col-lg-6 col-md-6 col-12">
                                    <div class="form-floating">
                                        <input type="email" name="email" id="email" pattern="[^ @]*@[^ @]*"
                                            class="form-control" placeholder="Email address" required="">

                                        <label for="floatingInput">Email address</label>
                                    </div>
                                </div>

                                <div class="col-lg-12 col-12">
  
                                    <div class="form-floating">
                                        <textarea class="form-control" id="message" name="message"
                                            placeholder="Describe message here"></textarea>

                                        <label for="floatingTextarea">Describe message here</label>
                                    </div>
                                </div>
                             
                                <div class="col-lg-4 col-12 ms-auto">
                                    <%--<asp:Button ID="Submit" runat="server" Text="Button" OnClick="Submit_Click" />
                                    <a href="mailto:hadeelzoubi12@gmail.com" class="email-button">Contact Us</a>

                                    <button id="Enter" type="submit" class="form-control" OnClick="Submit_Click">Submit</button>
                                </div>
                            
                            </div>
                        </form>
                    </div>

                </div>
            </div>
        </section>--%>
    </main>
  </form>

    <footer class="site-footer">
        <div class="container">
            <div class="row">

                <div class="col-lg-3 col-md-6 col-12">
    <a class="navbar-brand" href="index.html">
        <img src="images/logo.png" class="logo-image img-fluid" alt="logo">
    </a>
</div>

                <div class="col-lg-3 col-md-6 col-12 mb-4 mb-md-0 mb-lg-0" >
                   
    <ul class="site-footer-links" >
        <li class="site-footer-link-item" style="display: block !important;">
            <a href="#" class="site-footer-link">Home</a>
        </li>
        
        <li class="site-footer-link-item" style="display: block !important;">
            <a href="#" class="site-footer-link">About</a>
        </li>

        <li class="site-footer-link-item" style="display: block !important;">
            <a href="#" class="site-footer-link">Contact Us</a>
        </li>

        <li class="site-footer-link-item" style="display: block !important;">
            <a href="#" class="site-footer-link">LOGIN</a>
        </li>
    </ul>

                </div>

                <div class="col-lg-3 col-md-6 col-12 mb-4 mb-md-0 mb-lg-0">
                    <h6 class="site-footer-title mb-3">Contact</h6>

                    <p class="mb-2"><strong class="d-inline me-2">Phone:</strong> 0771234567</p>

                    <p>
                        <strong class="d-inline me-2">Email:</strong>
                        <a href="#">codesphere@gmail.com</a>
                    </p>
                </div>

                <div class="col-lg-3 col-md-6 col-12">
                   

                    <h6 class="site-footer-title mb-3">Social</h6>

                    <ul class="social-icon">
                        <li class="social-icon-item">
                            <a href="#" class="social-icon-link bi-instagram"></a>
                        </li>

                        <li class="social-icon-item">
                            <a href="#" class="social-icon-link bi-twitter"></a>
                        </li>

                        <li class="social-icon-item">
                            <a href="#" class="social-icon-link bi-whatsapp"></a>
                        </li>
                    </ul>
                </div>

            </div>
        </div>

        <div class="container ">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-12">
                    <div style="display:flex; justify-content:center;">
                    <p>Copyright Â© 2024 codesphere academy</p>
                        </div>
                </div>
            </div>
        </div>
    </footer>

    <!-- JAVASCRIPT FILES -->
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.bundle.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/custom.js"></script>

</body>

</html>