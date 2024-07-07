<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Courses for student.aspx.cs" Inherits="Survey_and_Student_courses_pages.Courses_for_student" %>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student Courses</title>
    <link rel="stylesheet" href="https://unpkg.com/bs-brain@2.0.4/components/services/service-4/assets/css/service-4.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

    <!-- CSS FILES -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400&family=Sono:wght@200;300;400;500;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="css/bootstrap-icons.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link href="css/templatemo-pod-talk.css" rel="stylesheet">
    <style>
        .text-primary {
            color: #1a73e8 !important;
        }

        .border-primary {
            border-color: #1a73e8 !important;
        }

        .link-primary {
            color: #1a73e8 !important;
        }

        .card-custom {
            border-radius: 15px;
            transition: transform 0.2s;
            margin: 20px;
        }

        .card-custom:hover {
            transform: scale(1.05);
        }

        .card-body img {
            width: 100px;
            height: 100px;
            object-fit: cover;
            border-radius: 50%;
            margin-bottom: 15px;
        }

        .card-body h4 {
            font-size: 1.25rem;
        }

        .card-body p {
            font-size: 0.875rem;
        }
    </style>
</head>

<body>
      <%-- Nav --%>
  <nav class="navbar navbar-expand-lg fixed-top justify-content-center">
      <div class="container d-flex justify-content-center">
          <asp:HyperLink runat="server" NavigateUrl="index.aspx" CssClass="navbar-brand">
          <asp:Image runat="server" ImageUrl="images/logo.png" CssClass="logo-image img-fluid" AlternateText="logo" />
          </asp:HyperLink>

          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
              aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
          </button>

          <div class="collapse navbar-collapse justify-content-center" id="navbarNav">
              <ul class="navbar-nav">
                  <li class="nav-item">
                      <asp:HyperLink runat="server" NavigateUrl="index.aspx" CssClass="nav-link">Home</asp:HyperLink>
                  </li>
                  <li class="nav-item">
                      <asp:HyperLink runat="server" NavigateUrl="about.aspx" CssClass="nav-link">About</asp:HyperLink>
                  </li>
                  <li class="nav-item">
                      <asp:HyperLink runat="server" NavigateUrl="contact.aspx" CssClass="nav-link">Contact</asp:HyperLink>
                  </li>
              </ul>
          </div>

          <asp:HyperLink runat="server" NavigateUrl="#section_3" CssClass="btn custom-btn custom-border-btn smoothscroll">LOGIN</asp:HyperLink>
      </div>
  </nav>
     <header class="site-header d-flex flex-column justify-content-center align-items-center">
     <div class="container">
         <div class="row">

             <div class="col-lg-12 col-12 text-center">

                 <h2 class="mb-0">Student Courses</h2>
             </div>

         </div>
     </div>
 </header>
    <form id="form1" runat="server">
        <div>

            <!-- Service 4 - Bootstrap Brain Component -->
            <section class="bg-light py-5 py-xl-8">
                <asp:Panel ID="CoursesPanel" runat="server">
                    <div class="container">
                        <div class="row justify-content-md-center">
                            <div class="col-12 col-md-10 col-lg-8 col-xl-7">
                              
                            </div>
                        </div>
                    </div>

                    <div class="container overflow-hidden">
                        <div class="row gy-4 gy-xl-0">
                            <div class="col-12 col-sm-6 col-xl-4">
                                <div class="card card-custom border-0 border-bottom border-primary shadow-sm">
                                    <div class="card-body text-center p-4 p-xxl-5">
                                        <img src="pic/csharp-featured.png" alt="C# Course">
                                        <h4 class="mb-4">C# Course Survey</h4>
                                        <p class="mb-4 text-secondary">Please fill out this survey to help us improve our C# course.</p>
                                        <asp:LinkButton ID="LinkButtonCsharp" runat="server" OnClick="LinkButtonCsharp_Click" CssClass="fw-bold text-decoration-none link-primary">Fill the Survey
                                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-right-short" viewBox="0 0 16 16">
                                                <path fill-rule="evenodd" d="M4 8a.5.5 0 0 1 .5-.5h5.793L8.146 5.354a.5.5 0 1 1 .708-.708l3 3a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708-.708L10.293 8.5H4.5A.5.5 0 0 1 4 8z" />
                                            </svg>
                                        </asp:LinkButton>
                                    </div>
                                </div>
                            </div>
                            <div class="col-12 col-sm-6 col-xl-4">
                                <div class="card card-custom border-0 border-bottom border-primary shadow-sm">
                                    <div class="card-body text-center p-4 p-xxl-5">
                                        <img src="pic/1658841510153.png" alt="PHP Course">
                                        <h4 class="mb-4">PHP Course Survey</h4>
                                        <p class="mb-4 text-secondary">Please fill out this survey to help us improve our PHP course.</p>
                                        <asp:LinkButton ID="LinkButtonPHP" runat="server" OnClick="LinkButtonPHP_Click" CssClass="fw-bold text-decoration-none link-primary">Fill the Survey
                                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-right-short" viewBox="0 0 16 16">
                                                <path fill-rule="evenodd" d="M4 8a.5.5 0 0 1 .5-.5h5.793L8.146 5.354a.5.5 0 1 1 .708-.708l3 3a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708-.708L10.293 8.5H4.5A.5.5 0 0 1 4 8z" />
                                            </svg>
                                        </asp:LinkButton>
                                    </div>
                                </div>
                            </div>
                            <div class="col-12 col-sm-6 col-xl-4">
                                <div class="card card-custom border-0 border-bottom border-primary shadow-sm">
                                    <div class="card-body text-center p-4 p-xxl-5">
                                        <img src="pic/nodejs.svg" alt="Node.js Course">
                                        <h4 class="mb-4">Node.js Course Survey</h4>
                                        <p class="mb-4 text-secondary">Please fill out this survey to help us improve our Node.js course.</p>
                                        <asp:LinkButton ID="LinkButtonNodejs" runat="server" OnClick="LinkButtonNodejs_Click" CssClass="fw-bold text-decoration-none link-primary">Fill the Survey
                                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-right-short" viewBox="0 0 16 16">
                                                <path fill-rule="evenodd" d="M4 8a.5.5 0 0 1 .5-.5h5.793L8.146 5.354a.5.5 0 1 1 .708-.708l3 3a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708-.708L10.293 8.5H4.5A.5.5 0 0 1 4 8z" />
                                            </svg>
                                        </asp:LinkButton>
                                    </div>
                                </div>
                            </div>
                            <div class="col-12 col-sm-6 col-xl-4">
                                <div class="card card-custom border-0 border-bottom border-primary shadow-sm">
                                    <div class="card-body text-center p-4 p-xxl-5">
                                        <img src="pic/1687615910475.png" alt="C++ Course">
                                        <h4 class="mb-4">C++ Course Survey</h4>
                                        <p class="mb-4 text-secondary">Please fill out this survey to help us improve our C++ course.</p>
                                        <asp:LinkButton ID="LinkButtonCplus" runat="server" OnClick="LinkButtonCplus_Click" CssClass="fw-bold text-decoration-none link-primary">Fill the Survey
                                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-right-short" viewBox="0 0 16 16">
                                                <path fill-rule="evenodd" d="M4 8a.5.5 0 0 1 .5-.5h5.793L8.146 5.354a.5.5 0 1 1 .708-.708l3 3a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708-.708L10.293 8.5H4.5A.5.5 0 0 1 4 8z" />
                                            </svg>
                                        </asp:LinkButton>
                                    </div>
                                </div>
                            </div>
                          
                        </div>
                    </div>
                </asp:Panel>
            </section>
        </div>
    </form>
       <%-- Footer --%>
   <footer class="site-footer">
       <div class="container">
           <div class="row">
               <div class="col-lg-3 col-md-6 col-12">
                   <a class="navbar-brand" href="index.html">
                       <img src="images/logo.png" class="logo-image img-fluid" alt="logo">
                   </a>
               </div>

               <div class="col-lg-3 col-md-6 col-12 mb-4 mb-md-0 mb-lg-0">
                   <ul class="site-footer-links">
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

       <div class="container">
           <div class="row">
               <div class="col-lg-12 col-md-12 col-12">
                   <div style="display: flex; justify-content: center;">
                       <p>Copyright © 2024 codesphere academy</p>
                   </div>
               </div>
           </div>
       </div>
   </footer>
  
   <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
   <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
   <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
