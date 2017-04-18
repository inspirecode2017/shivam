<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Sailor - Bootstrap 3 corporate template</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <meta name="description" content="Bootstrap 3 template for corporate business" />
        <!-- css -->
        <link href="css/bootstrap.min.css" rel="stylesheet" />
        <link href="css/cubeportfolio.min.css" rel="stylesheet" />
        <link href="css/style.css" rel="stylesheet" />               
        <!-- Theme skin -->
        <link id="t-colors" href="skins/default.css" rel="stylesheet" />

        <!-- boxed bg -->
        <link id="bodybg" href="bodybg/bg1.css" rel="stylesheet" type="text/css" />


        <!-- table  -->        
        <link href="https://cdn.datatables.net/1.10.13/css/dataTables.bootstrap.min.css" rel="stylesheet" />
        <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
        <script src="https://cdn.datatables.net/1.10.13/js/jquery.dataTables.min.js"></script>
        <script src="https://cdn.datatables.net/1.10.13/js/dataTables.bootstrap.min.js"></script>


        <!--        <script type="text/javascript">
                    $(document).ready(function() {
        
                        $('#example').DataTable();
                    });
                </script>
        -->



        <script type="text/javascript">
            $(document).ready(function() {
                $(".search").keyup(function() {
                    var searchTerm = $(".search").val();
                    var listItem = $('.results tbody').children('tr');
                    var searchSplit = searchTerm.replace(/ /g, "'):containsi('")

                    $.extend($.expr[':'], {'containsi': function(elem, i, match, array) {
                            return (elem.textContent || elem.innerText || '').toLowerCase().indexOf((match[3] || "").toLowerCase()) >= 0;
                        }
                    });

                    $(".results tbody tr").not(":containsi('" + searchSplit + "')").each(function(e) {
                        $(this).attr('visible', 'false');
                    });

                    $(".results tbody tr:containsi('" + searchSplit + "')").each(function(e) {
                        $(this).attr('visible', 'true');
                    });

                    var jobCount = $('.results tbody tr[visible="true"]').length;
                    $('.counter').text(jobCount + ' item');

                    if (jobCount == '0') {
                        $('.no-result').show();
                    }
                    else {
                        $('.no-result').hide();
                    }
                });
            });
        </script>



        <style>


            .results tr[visible='false'],
            .no-result{
                display:none;
            }

            .results tr[visible='true']{
                display:table-row;
            }

            .counter{
                padding:8px; 
                color:#ccc;
            }
        </style>   
  </head>

    <!-- end header -->

    <%@include file="bodyheader.jsp" %>


    <section id="inner-headline">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <ul class="breadcrumb">
                        <li><a href="#"><i class="fa fa-home"></i></a><i class="icon-angle-right"></i></li>
                        <li><a href="#">Project</a><i class="icon-angle-right"></i></li>
                        <li class="active">J2EE</li>
                    </ul>
                </div>
            </div>
        </div>
    </section>
    <section id="content">

        <div class="container">

            <div class="row">



                <div class="form-group pull-right">
                    <input type="text" class="search form-control" placeholder="What you looking for?">
                </div>
                <span class="counter pull-right"></span>



                <table class="table table-hover table-bordered results">
                    <thead>
                        <tr>
                            <th>Project Title</th>
                            <th>Platform  </th>                           
                            <th>Technologies</th>
                            <th>College</th>
                            <th>Year</th>
                            <th>Team Details</th>                           
                        </tr>

                        <tr class="warning no-result">
                            <td colspan="6"><i class="fa fa-warning"></i> No result</td>
                        </tr>

                    </thead>
                    <tfoot>
                        <tr>
                            <th>Project Title</th>
                            <th>Platform </th>                           
                            <th>Technologies</th>
                            <th>College</th>
                            <th>Year</th>
                            <th>Team Details</th>                            
                        </tr>




                    </tfoot>
                    <tbody style="color:#4B0082;font-weight: bold; ">

 <!--======================================2017=================================================================-->    
                        <tr>
                            <td>Integrated Marketing Campaigning & Promotions </td>
                            <td>J2EE</td>                            
                            <td>Spring+Hibernate</td>
                            <td>BIT</td>
                            <td>2017</td>
                            <td>Darshana<br>Raj<br>Vaishali</td>                           
                        </tr>
                        <tr>
                            <td>Connect Pooling</td>
                            <td>J2EE</td>                            
                            <td>Spring+Hibernate</td>
                            <td>SVIT</td>
                            <td>2017</td>
                            <td>Harsha<br>Swati</td>
                        </tr>
                        <tr>
                            <td>Distributed Networking of Health Services</td>
                            <td>Android</td>
                            <td>Android+Servlet</td>                            
                            <td>BIT</td>
                            <td>2017</td>
                            <td>Gitu <br>Rakshita <br>Vishwa </td>
                        </tr>

                        <tr>
                            <td>Smart Notification with Data Encription Security </td>
                            <td>J2EE</td>                            
                            <td>Spring+Hibernate</td>
                            <td>VIT</td>
                            <td>2017</td>
                            <td>Maitree<br>Drashti</td>
                        </tr>
                        <tr>
                            <td>MR Tracker +</td>
                            <td>Android,J2EE</td>                            
                            <td>Android+JDBC+Servlet+JSP</td>
                            <td>VIT</td>
                            <td>2017</td>
                            <td>Ankita<br>Shreya <br>Shreya</td>
                        </tr>
                        <tr>
                            <td>Analysis of Security Threats on Data in Distributed System</td>
                            <td>J2EE</td>                            
                            <td>Spring+Hibernate</td>
                            <td>VIT</td>
                            <td>2017</td>
                            <td>Disha<br> Hitarthi</td>
                        </tr>
                        <tr>
                            <td>Enhanced Train Booking System</td>
                            <td>J2EE,Android</td>                            
                            <td>Spring+Hibernate</td>
                            <td>VIT</td>
                            <td>2017</td>
                            <td>Zinal<br>Pooja<br>Priyanka</td>
                        </tr>
                        <tr>
                            <td>Tune up My Business</td>
                            <td>J2EE</td>                            
                            <td>Spring+Hibernate</td>
                            <td>SIGMA</td>                          
                            <td>2017</td>
                            <td>Aman</td>
                        </tr>

                        <tr>
                            <td>Folder Security</td>
                            <td>Android,Socket Programming</td>
                            <td>Android+JDBC+Socket</td>
                            <td>BIT</td>
                            <td>2017</td>
                            <td><br>Prashant<br>Dharmesh</td>      
                        </tr>

                        <tr>
                            <td>Project Connect App</td>
                            <td>Android</td>                            
                            <td>Android+JDBC+Servlet</td>                         
                            <td>KJIT</td>
                            <td>2017</td>
                            <td>Mansi<br>Mansi</td>                             
                        </tr>

                        <tr>
                            <td>Web Server Traffic and Bug Monitoring </td>
                            <td>J2EE</td>                            
                            <td>Spring+Hibernate</td>
                            <td>KJIT</td>
                            <td>2017</td>
                            <td>Meera<br> Richa</td>
                        </tr>


                        <!--                        <tr>
                                                    <td> </td>
                                                    <td></td>
                                                    <td></td>
                                                    <td></td>
                                                    <td></td>
                                                    <td>2017</td>
                                                    <td>Bhavesh<br>Jayesh<br>Kamlesh</td>
                                                </tr>
                                                
                                                
                                                <tr>
                                                    <td></td>
                                                    <td></td>
                                                    <td></td>
                                                    <td></td>
                                                    <td></td>
                                                    <td>2017</td>
                                                    <td>Shivam<br><br></td>
                                                </tr>-->

 <!--======================================2016=================================================================-->    
                        <tr>
                            <td>AI Virtual Human Brain</td>
                            <td>J2EE</td>                           
                            <td></td>
                            <td>VIT</td>
                            <td>2016</td>
                            <td>koshal<br>Ketan<br>Nitin</td>                          
                        </tr>
                        <tr>
                            <td>Webserver Traffic Tracking</td>
                            <td>J2EE</td>
                            <td>Struts+Hibernate</td>                           
                            <td>VIT<br>VIT<br>ITM</td>
                            <td>2016</td>
                            <td>Heta<br>Ravi<br>Nitesh</td>
                        </tr>
                        <tr>
                            <td>Intelligent Panel According to System Accessibility Rights</td>
                            <td>J2EE</td>
                            <td>Struts+JDBC</td> 
                            <td>VIT</td>
                            <td>2016</td>
                            <td>Ankita<br>Priya<br>Rajat</td>
                        </tr>
                        <tr>
                            <td>Generic Web Era</td>
                            <td>J2EE</td>
                            <td>Struts+Hibernate</td> 
                            <td>SVIT</td>
                            <td>2016</td>
                            <td>Harsh<br>Hardik<br>Kunjal</td>
                        </tr>
                        <tr>
                            <td>Strategic Investment</td>
                            <td>J2EE</td>
                            <td>Struts+Hibernate</td> 
                            <td>BIT</td>
                            <td>2016</td>
                            <td>Grishma<br>Kajal<br>Ramtej</td>
                        </tr>


                        <tr>
                            <td>Generic Controller Using Raspberry pi</td>
                            <td></td>
                            <td></td>                          
                            <td>BIT</td>
                            <td>2016</td>
                            <td>Jayesh<br>Osho</td>
                        </tr>


                        <tr>
                            <td> Couch City </td>
                            <td>J2EE</td>
                            <td>Struts+Hibernate</td> 
                            <td>BIT</td>
                            <td>2016</td>
                            <td>Devarshi<br>Mahesh<br>Vacha</td>
                        </tr>


                        <tr>
                            <td> Earth Moving Equipments</td>
                            <td>J2EE</td>
                            <td>Struts+JDBC</td> 
                            <td>BIT</td>
                            <td>2016</td>
                            <td>Ankit<br>Hiren<br>Nidhi</td>
                        </tr>
                        <tr>
                            <td>Faculty Recruitment </td>
                            <td>J2EE</td>
                            <td>Struts+Hibernate</td> 
                            <td>BIT</td>
                            <td>2016</td>
                            <td>Dhruvita<br>Meet<br>Mayur<br>Vrutika</td>
                        </tr>

                        <tr>
                            <td> Book-Sharing</td>
                            <td>J2EE</td>
                            <td>Struts+Hibernate</td> 
                            <td>Sigma</td>
                            <td>2016</td>
                            <td>Dipti</td>
                        </tr>


                        <tr>
                            <td> Lost Property </td>
                            <td>J2EE</td>
                            <td>Struts+JDBC</td> 
                            <td>PIET</td>
                            <td>2016</td>
                            <td>Ankita<br>Mudassira</td>
                        </tr>

                        <tr>
                            <td>Bug Handling</td>
                            <td>J2EE</td>
                            <td>Struts+JDBC</td> 
                            <td>PIET</td>
                            <td>2016</td>
                            <td>Anjali<br>Pankti</td>
                        </tr>

                        <tr>
                            <td> Designing Analysis & 
                                Implementation of data 
                                layer in .NET Platform
                            </td>
                            <td>.NET</td>
                            <td>ASP.NET,C#,ADO.NET</td>                             
                            <td>VIT</td>
                            <td>2016</td>
                            <td>Kavita<br>Sarangi<br>Shruti</td>
                        </tr>



                        <tr>
                            <td> I-legal Action</td>
                            <td>.NET</td>
                            <td>ASP.NET,C#,ADO.NET</td> 
                            <td>VIT</td>
                            <td>2016</td>
                            <td>Arpit<br>Dhrutika<br>Ruchita</td>
                        </tr>

                        <tr>
                            <td> Flavour of India</td>
                            <td>.NET</td>
                            <td>ASP.NET,C#,ADO.NET</td> 
                            <td>VIT</td>
                            <td>2016</td>
                            <td>Gorakhnath<br>Jinal<br>Tanveer</td>
                        </tr>

                        <tr>
                            <td>Web traffic Analytics and 
                                Optimisation
                            </td>
                            <td>.NET</td>
                            <td>ASP.NET,C#,ADO.NET</td>                        
                            <td>PIET</td>
                            <td>2016</td>
                            <td>Deepak
                                <br>Mayura
                                <br>Piyush
                                <br>Vivek</td>
                        </tr>


                        <tr>
                            <td> Clean India</td>
                            <td>.NET</td>
                            <td>ASP.NET,C#,ADO.NET</td> 
                            <td>KJIT</td>
                            <td>2016</td>
                            <td>Krina</td>
                        </tr>


                        <tr>
                            <td> Freelancing Design </td>
                            <td>.NET</td>
                            <td>ASP.NET,C#,ADO.NET</td> 
                            <td>LITE</td>
                            <td>2016</td>
                            <td>Nidhi</td>
                        </tr>





                        <tr>
                            <td> Disaster Management System</td>
                            <td>Android</td>                            
                            <td>Android+JDBC+Servlet+JSP</td>       
                            <td>VIT</td>
                            <td>2016</td>
                            <td>Devanshi<br>Palak<br>Krupa</td>
                        </tr>


                        <tr>
                            <td> Logistic System</td>
                            <td>Android</td>                            
                            <td>Android+JDBC+Servlet+JSP</td>    
                            <td>PIET</td>
                            <td>2016</td>
                            <td>Manini<br>Priya<br>Apexa<br>Kanika</td>
                        </tr>



                        <tr>
                            <td>Dimora </td>
                            <td>Android</td>                            
                            <td>Android+JDBC+Servlet+JSP</td>    
                            <td>Sigma</td>
                            <td>2016</td>
                            <td>Anish <br>Abhishank<br>Antony <br>Darshak
                            </td>
                        </tr>


                        <tr>
                            <td>WSP</td>
                             <td>J2EE</td>
                            <td>Struts+Hibernate</td> 
                            <td>ITM</td>
                            <td>2016</td>
                            <td>Riyal <br>Hardik</td>
                        </tr>

                        
 <!--======================================2015=================================================================-->                            
                        <tr>
                            <td>Project Intent </td>
                            <td>J2EE</td>
                            <td>Struts+Hibernate</td> 
                            <td>VIT</td>
                            <td>2015</td>
                            <td>Dhruv<br>Jay<br>Prerak </td>
                        </tr>


                        <tr>
                            <td>Web Survey & Promoting</td>
                            <td>J2EE</td>
                            <td>Struts+Hibernate</td> 
                            <td>VIT</td>
                            <td>2015</td>
                            <td>Ankur<br>Divya<br>Nikul</td>
                        </tr>

                        <tr>
                            <td>Rytham Heart Institute E-care </td>
                            <td>J2EE</td>
                            <td>Struts+Hibernate</td> 
                            <td>VIT</td>
                            <td>2015</td>
                            <td>Parth</td>
                        </tr>

                        <tr>
                            <td>Interview Evolution System </td>
                            <td>J2EE</td>
                            <td>Struts+Hibernate</td> 
                            <td>VIT</td>
                            <td>2015</td>
                            <td>Jyotil<br>Kumar<br>Niyati</td>
                        </tr>


                        <tr>
                            <td> E-Advertising & Promoting</td>
                            <td>J2EE</td>
                            <td>Struts+Hibernate</td> 
                            <td>SVIT</td>
                            <td>2015</td>
                            <td>Tarang</td>
                        </tr>


                        <tr>
                            <td>E-Services for  h/w  &  s/w </td>
                            <td>J2EE</td>
                            <td>Struts+JDBC</td> 
                            <td>SVIT</td>
                            <td>2015</td>
                            <td>Nidhi</td>
                        </tr>


                        <tr>
                            <td>Future Guide </td>
                            <td>J2EE</td>
                            <td>Struts+JDBC</td> 
                            <td>VIT</td>
                            <td>2015</td>
                            <td>Binal<br>Himali<br>Zalak</td>
                        </tr>







                        <tr>
                            <td> Unity</td>
                            <td>J2EE</td>
                            <td>Struts+JDBC</td> 
                            <td>VIT</td>
                            <td>2015</td>
                            <td>Ankit</td>
                        </tr>



                        <tr>
                            <td>Helping Hand </td>
                            <td>J2EE</td>
                            <td>Struts+JDBC</td> 
                            <td>VIT</td>
                            <td>2015</td>
                            <td>Darshan<br>Lavisha</td>
                        </tr>



                        <tr>
                            <td> My Share Market 24</td>
                            <td>J2EE</td>
                            <td>Struts+JDBC</td> 
                            <td>GEC<br>SVIT</td>                            
                            <td>2015</td>
                            <td>Gautam<br>Jay</td>
                        </tr>


                        <tr>
                            <td> Rosery Revolution</td>
                            <td>.NET</td>
                            <td>ASP.NET,C#,ADO.NET</td> 
                            <td>VIT</td>
                            <td>2015</td>
                            <td>Hitesh<br>Bhoomika</td>
                        </tr>
                        <tr>
                            <td> Project Evolution</td>
                            <td>.NET</td>
                            <td>ASP.NET,C#,ADO.NET</td> 
                            <td>VIT</td>
                            <td>2015</td>
                            <td>Janki<br>Urja</td>
                        </tr>
                        <tr>
                            <td> Renal & Service System</td>
                            <td>.NET</td>
                            <td>ASP.NET,C#,ADO.NET</td> 
                            <td>VIT</td>
                            <td>2015</td>
                            <td>Manish<br>Premal</td>
                        </tr>
                        <tr>
                            <td> Issue Tracking & Bug Fixing</td>
                            <td>.NET</td>
                            <td>ASP.NET,C#,ADO.NET</td> 
                            <td>VIT</td>
                            <td>2015</td>
                            <td>Akhilesh<br>Neel</td>
                        </tr>


                        <tr>
                            <td>Organization Rating Service</td>
                            <td>.NET</td>
                            <td>ASP.NET,C#,ADO.NET</td> 
                            <td>VIT</td>
                            <td>2015</td>
                            <td>Krunal<br>Mayur<br>Ravi</td>
                        </tr>
 <!--======================================2014=================================================================-->    
                        <tr>
                            <td>Barodafun</td>
                            <td>J2EE</td>
                            <td>Struts+JDBC</td> 
                            <td>SVIT</td>                            
                            <td>2014</td>
                            <td>Ishita<br>Masum<br>Nivya</td>
                        </tr>

                        <tr>
                            <td> E-View of Marketing Strategy</td>
                            <td>J2EE</td>
                            <td>Struts+JDBC</td> 
                            <td>SVIT</td>        
                            <td>2014</td>
                            <td>Bansari</td>
                        </tr>


                        <tr>
                            <td>  Project Hub</td>
                            <td>J2EE</td>
                            <td>Struts+JDBC</td> 
                            <td>SVIT</td>  
                            <td>2014</td>
                            <td>Ambika<br>Bhakti<br>Hemaxi</td>
                        </tr>

                        <tr>
                            <td>Transportation Mangement System </td>
                            <td>J2EE,Android</td>
                            <td>Struts+JDBC+Android</td> 
                            <td>SVIT</td>  
                            <td>2014</td>
                            <td>Aditi<br>Pooja<br>Swetanshi</td>
                        </tr>

                        <tr>
                            <td>Smart Assessment Services </td>
                            <td>J2EE</td>
                            <td>Struts+JDBC</td> 
                            <td>SVIT</td>  
                            <td>2014</td>
                            <td>Kashyap<br>Vinita<br></td>
                        </tr>

                        <tr>
                            <td> E-Institute Management System</td>
                            <td>J2EE</td>
                            <td>Struts+JDBC</td> 
                            <td>KJIT</td>  
                            <td>2014</td>
                            <td>Ajay<br>Jinal<br>Sheel</td>
                        </tr>

                        <tr>
                            <td>University Portal </td>
                            <td>J2EE</td>
                            <td>Struts+JDBC</td> 
                            <td>BIT</td>  
                            <td>2014</td>
                            <td>Darshan<br>Kaushik</td>
                        </tr>


                        <tr>
                            <td>PMRTS</td>
                            <td>.NET</td>
                            <td>ASP.NET,C#,ADO.NET</td> 
                            <td>MBICT</td>
                            <td>2014</td>
                            <td>Jagarvi<br>Manali</td>
                        </tr>



                        <tr>
                            <td>Real-Estate </td>
                            <td>.NET</td>
                            <td>ASP.NET,C#,ADO.NET</td> 
                            <td>SPU</td>
                            <td>2014</td>
                            <td>Rahul</td>
                        </tr>

      <!--======================================2013=================================================================-->                      
                        <tr>
                            <td> Kurmi Samaj Baroda</td>
                            <td>J2EE</td>
                            <td>Struts+JDBC</td>                             
                            <td>SVIT<br>SVIT<br>GITS</td>
                            <td>2013</td>
                            <td>CHARMI <br>SURABHI<br>RAHUL</td>
                        </tr>


                        <tr>
                            <td> Mykarsoltechnologies</td>
                            <td>J2EE</td>
                            <td>Struts+JDBC</td>                            
                            <td>SVIT</td>
                            <td>2013</td>
                            <td>DIVYANK <br>JIGAR <br>KARTIK <br>RAJ </td>
                        </tr>

                        <tr>
                            <td> Android Tracking System</td>
                            <td>Android</td>                            
                            <td>Android+JDBC+Servlet</td>    
                            <td>SIGMA</td>
                            <td>2013</td>
                            <td>JANAK <br>ROCKY <br>NILIMA</td>
                        </tr>

                        <tr>
                            <td> VechileSearchManagement    </td>
                            <td>J2EE</td>
                            <td>Struts+JDBC</td> 

                            <td>SIGMA</td>
                            <td>2013</td>
                            <td>NIRAV <br>PALAK<br></td>
                        </tr>

                        <tr>
                            <td>Gandhi Cotton Company </td>
                            <td>J2EE</td>
                            <td>Struts+JDBC</td>                             
                            <td>BIT</td>
                            <td>2013</td>
                            <td>VRAJ<br>SANDIP<br></td>
                        </tr>

                        <tr>
                            <td> Online Mykarsolcirtification</td>
                            <td>J2EE</td>
                            <td>Struts+JDBC</td>                          
                            <td>GHPATEL</td>
                            <td>2013</td>
                            <td>AKHIL<br>SUSHIL<br></td>
                        </tr>

                        <tr>
                            <td> PHRMS </td>
                            <td>J2EE</td>
                            <td>Struts+JDBC</td> 
                            <td>SIGMA<br>SIGMA<br>SIGMA<br>GHPATEL</td>
                            <td>2013</td>
                            <td>MAYANK <br>JAIDEEP <br>BRIJESH <br>VIPUL</td>
                        </tr>

 <!--======================================2012=================================================================-->    

                        <tr>
                            <td> Videocon  Funnel Management Information System</td>
                            <td>J2EE</td>
                            <td>Struts+JDBC</td> 
                            <td>Narmada College</td>
                            <td>2013</td>
                            <td>Krutika<br>Nazneen<br>Nilam</td>
                        </tr>

                        <tr>
                            <td>Learning Management  </td>
                            <td>J2EE</td>
                            <td>Struts+Hibernate</td> 
                            <td>BIT</td>
                            <td>2013</td>
                            <td>Pooja<br>Prachi<br>Sohil<br>Yogesh</td>
                        </tr>

                        <tr>
                            <td>Online Interviewing  </td>
                            <td>.NET</td>
                            <td>ASP.NET,C#,ADO.NET</td>                           
                            <td>BIT</td>
                            <td>2013</td>
                            <td>Apoorva<br>Nirav<br>Shivani<br>Sandeep</td>
                        </tr>

                        <tr>
                            <td>Project HR Performance Management System  </td>
                            <td>J2EE</td>
                            <td>Struts+JDBC</td> 
                            <td>M S UNIVERSITY</td>
                            <td>2013</td>
                            <td>Mihir<br>Mehul</td>
                        </tr>



                    </tbody>
                </table>



            </div>
        </div>
    </section>

    <%@include file="bodyfooter.jsp" %>