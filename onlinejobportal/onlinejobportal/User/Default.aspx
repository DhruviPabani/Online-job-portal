<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMaster.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="onlinejobportal.User.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <main>

        <!-- slider Area Start-->
        <div class="slider-area ">
            <!-- Mobile Menu -->
            <div class="slider-active">
                <div class="single-slider slider-height d-flex align-items-center" data-background="../assets/img/hero/home.jpg">
                    <div class="container">
                        <div class="row">
                            <div class="col-xl-6 col-lg-9 col-md-10">
                                <div class="hero__caption align-content-center">
                                    <h1>Find the most exciting startup jobs</h1>
                                </div>
                            </div>
                        </div>
                        <!-- Search Box -->
                        <div class="row">
                            <div class="col-xl-8">
                                <!-- form -->
                                <%--<form action="#" class="search-box">
                                    <div class="input-form">
                                        <input type="text" placeholder="Job Tittle or keyword">
                                    </div>
                                    <div class="select-form">
                                        <div class="select-itms">
                                            <select name="select" id="select1">
                                                <option value="">Location BD</option>
                                                <option value="">Location PK</option>
                                                <option value="">Location US</option>
                                                <option value="">Location UK</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="search-form">
                                        <a href="#">Find job</a>
                                    </div>	
                                </form>	--%>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- slider Area End-->
        <!-- Our Services Start -->
        <div class="our-services section-pad-t30">
    <div class="container">
        <!-- Section Title -->
        <div class="row">
            <div class="col-lg-12">
                <div class="section-tittle text-center">
                    <span>FEATURED JOBS</span>
                    <h2>Browse Job Categories</h2>
                </div>
            </div>
        </div>
        <div class="row d-flex justify-content-center">
            <div class="col-xl-3 col-lg-3 col-md-4 col-sm-6">
                <div class="single-services text-center mb-30">
                    <div class="services-ion">
                        <span class="fas fa-desktop"></span> <!-- IT Support related icon -->
                    </div>
                    <div class="services-cap">
                       <h5><a href="job_listing.html">IT Support</a></h5>
                        
                    </div>
                </div>
            </div>
            <div class="col-xl-3 col-lg-3 col-md-4 col-sm-6">
                <div class="single-services text-center mb-30">
                    <div class="services-ion">
                        <span class="fas fa-code"></span> <!-- Developer related icon -->
                    </div>
                    <div class="services-cap">
                       <h5><a href="job_listing.html">Web Development</a></h5>
                       
                    </div>
                </div>
            </div>
            <div class="col-xl-3 col-lg-3 col-md-4 col-sm-6">
                <div class="single-services text-center mb-30">
                    <div class="services-ion">
                        <span class="fas fa-cloud"></span> <!-- Cloud Computing related icon -->
                    </div>
                    <div class="services-cap">
                       <h5>Cloud Computing</h5>
                        
                    </div>
                </div>
            </div>
            <div class="col-xl-3 col-lg-3 col-md-4 col-sm-6">
                <div class="single-services text-center mb-30">
                    <div class="services-ion">
                        <span class="fas fa-mobile-alt"></span> <!-- Mobile Application related icon -->
                    </div>
                    <div class="services-cap">
                       <h5><a href="job_listing.html">Mobile App Development</a></h5>
                        
                    </div>
                </div>
            </div>
            <div class="col-xl-3 col-lg-3 col-md-4 col-sm-6">
                <div class="single-services text-center mb-30">
                    <div class="services-ion">
                        <span class="fas fa-sitemap"></span> <!-- Networking related icon -->
                    </div>
                    <div class="services-cap">
                       <h5><a href="job_listing.html">Networking</a></h5>
                        
                    </div>
                </div>
            </div>
            
            <div class="col-xl-3 col-lg-3 col-md-4 col-sm-6">
                <div class="single-services text-center mb-30">
                    <div class="services-ion">
                        <span class="fas fa-shield-alt"></span> <!-- Cybersecurity related icon -->
                    </div>
                    <div class="services-cap">
                       <h5><a href="job_listing.html">Cybersecurity</a></h5>
                      
                    </div>
                </div>
            </div>
            <div class="col-xl-3 col-lg-3 col-md-4 col-sm-6">
                <div class="single-services text-center mb-30">
                    <div class="services-ion">
                        <span class="fas fa-database"></span> <!-- Data Science related icon -->
                    </div>
                    <div class="services-cap">
                       <h5><a href="job_listing.html">Data Science</a></h5>
                     
                    </div>
                </div>
            </div>
        </div>
        <!-- More Btn -->
        <!-- Section Button -->
        <div class="row">
            <div class="col-lg-12">
                <div class="browse-btn2 text-center mt-50">
                    <a href="JobListing.aspx" class="border-btn2">Browse All IT Jobs</a>
                </div>
            </div>
        </div>
    </div>
</div>

        <!-- Our Services End -->
        <!-- Online CV Area Start -->
         <div class="online-cv cv-bg section-overly pt-90 pb-120"  data-background="../assets/img/gallery/cv_bg.jpg">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-xl-10">
                        <div class="cv-caption text-center">
                            
                            <p class="pera2"> Make a Difference with Your Online Resume!</p>
                            <a href="Profile.aspx" class="border-btn2 border-btn4">Upload your cv</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Online CV Area End-->
        <!-- Featured_job_start -->
         <div class="container">
           <div class="row">
                    <div class="col-lg-12 mb-10">
                        
                    </div>
                </div>
       </div>
        <!-- Featured_job_end -->
        <!-- How  Apply Process Start-->
        <div class="apply-process-area apply-bg pt-150 pb-150">
            <div class="container">
                <!-- Section Tittle -->
               <div class="row">
                    <div class="col-lg-12 mb-0">
                        <div class="section-tittle text-center"><br />
                           <span>Apply process</span>
                            <h2 > How it works</h2>
                        </div>
                    </div>
                </div>
                <!-- Apply Process Caption -->
                <div class="row">
                    <div class="col-lg-4 col-md-6">
                        <div class="single-process text-center mb-30">
                             
                            <div class="process-ion">
                                <span class="flaticon-search"></span>
                            </div>
                            <div class="process-cap"><br />
                               <h5>1. Search for Your Ideal Job</h5>
<p>Browse through a wide variety of job listings and find the perfect opportunity that matches your skills and interests.</p>
</div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="single-process text-center mb-30">
                            <div class="process-ion">
                                <span class="flaticon-curriculum-vitae"></span>
                            </div>
                            <div class="process-cap">
                              <h5>2. Apply for the Job</h5>
<p>Submit your application with just a few clicks and take the first step towards your new career. Ensure your resume stands out to potential employers!</p> </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="single-process text-center mb-30">
                            <div class="process-ion">
                                <span class="flaticon-tour"></span>
                            </div>
                            <div class="process-cap">
                               <h5>3. Get Your Job</h5>
<p>Once you've been selected, it's time to start your new journey. Enjoy the benefits of your new role and make an impact in your field!</p>
 </div>
                        </div>
                    </div>
                </div>
             </div>
        </div>
        <!-- How  Apply Process End-->
       <div class="container">
           <div class="row">
                    <div class="col-lg-12 mb-10">
                        
                    </div>
                </div>
       </div>
    </main>
</asp:Content>
