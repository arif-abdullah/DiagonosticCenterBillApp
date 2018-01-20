<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="indexUI.aspx.cs" Inherits="DiagnosticCenterBillManagementSystemApp.UI.indexUI" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>HOME | Diagnostic Center Bill Management System </title>
	<!-- BOOTSTRAP STYLES-->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
     <!-- FONTAWESOME STYLES-->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
        <!-- CUSTOM STYLES-->
    <link href="assets/css/custom.css" rel="stylesheet" />
     <!-- GOOGLE FONTS-->
   <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
</head>
<body>
    <div id="wrapper">
         <div class="navbar navbar-inverse navbar-fixed-top">
            <div class="adjust-nav">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">
                       <a style="align-items:stretch"> <img src="../images/utms-logo-header.png" height="100px" width="100%" /></a>
                    </a>
                </div>
            </div>
        </div>
        <!-- /. NAV TOP  -->
        <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">
                 

                    <li class="active-link">
                        <a href="indexUI.aspx" ><i class="fa fa-desktop "></i>HOME</a>
                    </li>
                   

                    <li>
                        <a href="TypeSetupUI.aspx"><i class="fa fa-table "></i>TYPE SETUP</a>
                    </li>
                    <li>
                        <a href="TestSetupUI.aspx"><i class="fa fa-edit "></i>TEST SETUP</a>
                    </li>


                     <li>
                        <a href="TestRequestUI.aspx"><i class="fa fa-qrcode "></i>TEST REQUEST SETUP</a>
                    </li>
                    <li>
                        <a href="PaymentUI.aspx"><i class="fa fa-bar-chart-o"></i>BILL PAYMENT</a>
                    </li>

                    <li>
                        <a href="TestWiseReportUI.aspx"><i class="fa fa-edit "></i>TEST WISE RESULT</a>
                    </li>
                    <li>
                        <a href="TypeWiseReportUI.aspx"><i class="fa fa-table "></i>TYPE WISE RESULT</a>
                    </li>
                     <li>
                        <a href="UnpaidBillReportUI.aspx"><i class="fa fa-edit "></i>UNPAID BILL REPORT</a>
                    </li>
                </ul>
                            </div>

        </nav>
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                     <h2>Diagnostic Center Bill Management System</h2>   
                    </div>
                </div>              
                 <!-- /. ROW  -->
                  <hr />
              
                 <!-- /. ROW  -->       
                Software for clinical laboratory environments including labs in hospitals, clinics, physician office labs and reference laboratories.
        A user friendly, web based sample management solution, to track biosamples and storage locations in an economical and reliable manner.
        Automates the management of laboratory business for just a fraction of the cost of manual or semi manual operations.    
    </div>
             <!-- /. PAGE INNER  -->
            
            </div>
         <!-- /. PAGE WRAPPER  -->
        
        </div>
    <div class="footer">
      
    
             <div class="row">
                <div class="col-lg-12" >
                    &copy;  Design & Developed by: Rayhan Ahmed Sajib, Sabbir Reza, Moniruzzaman
                </div>
        </div>
        </div>
          

     <!-- /. WRAPPER  -->
    <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
    <!-- JQUERY SCRIPTS -->
    <script src="assets/js/jquery-1.10.2.js"></script>
      <!-- BOOTSTRAP SCRIPTS -->
    <script src="assets/js/bootstrap.min.js"></script>
      <!-- CUSTOM SCRIPTS -->
    <script src="assets/js/custom.js"></script>
    
    
    
    
    
    
    
    
    
    
    
    

<%--<form id="form1" runat="server">

    <div class ='Logo'></div>
    <div class ='Header_Image'></div>

    <div class ='Left_Div'>
        <div class='E1'></div>
        <div class='E2'></div>
        <div class='E3'></div>
        <div class='E4'></div>
    </div>
    <div class ='Header_Div'><h1>&nbsp;Index</h1></div>
    <div class ='Menu'><h2>Menu</h2><br/>
        <table><tr>
                <td>
                    <a href="TypeSetupUI.aspx">Type Setup</a>
                </td>
            </tr>
            <tr>
                <td>
                    <a href="TestSetupUI.aspx">Test Setup</a>
                </td>
            </tr>
            <tr>
                <td>
                    <a href="TestRequestUI.aspx">Test Request Setup</a>
                </td>
            </tr>
            <tr>
                <td>
                    <a href="PaymentUI.aspx">Bill Payment</a>
                </td>
            </tr>
            <tr>
                <td>
                    <a href="TestWiseReportUI.aspx">Test Wise Report</a>
                </td>
            </tr>
            <tr>
                <td>
                    <a href="TypeWiseReportUI.aspx">Type Wise Report</a>
                </td>
            </tr>
            <tr>
                <td>
                    <a href="UnpaidBillReportUI.aspx">Unpaid Bill Report</a>
                </td>
            </tr>
        </table>
           
    </div>
    <div class ='Operation'>Operation</div>   
    <div class="Footer" >Footer</div>
    
</form>--%>
</body>
</html>

<script>
    (window).load(function(){
        $('.Logo').find('img').each(function(){
            var imgClass = (this.width/this.height > 1) ? 'wide' : 'tall';
            $(this).addClass(imgClass);
        })
    })

    $(window).load(function(){
        $('.Header_Image').find('img').each(function(){
            var imgClass = (this.width/this.height > 1) ? 'wide' : 'tall';
            $(this).addClass(imgClass);
        })
    })
</script>
