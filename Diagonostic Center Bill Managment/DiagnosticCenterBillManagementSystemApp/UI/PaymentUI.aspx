<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PaymentUI.aspx.cs" Inherits="DiagnosticCenterBillManagementSystemApp.UI.PaymentUI" %>





<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Bill Payment | Diagnostic Center Bill Management System </title>
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
                 

                    <li>
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
                    <li  class="active-link">
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
                     <h2>Unpaid Bill</h2>   
                    </div>
                </div>              
                 <!-- /. ROW  -->
                  <hr />
              
                 <!-- /. ROW  -->       
                <form id="form1" runat="server">
                    
                    <div style="padding-left: 20px">
            
            <table>
                <tr>
                    <td></td>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Bill No"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="billTextBox" runat="server"></asp:TextBox></td>
                    <td>
                        <asp:Button ID="searchButton" runat="server" Text="Search" OnClick="searchButton_Click" /></td>
                </tr>
            </table>
            <div>
                <asp:GridView ID="testsGridView" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="323px">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
            </div>
            
            <table>
                <tr>
                    <td></td>
                   
                    <td>
                        <asp:Label ID="Label" runat="server" Text="Bill Date"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="dateTextBox" runat="server" ReadOnly="True"></asp:TextBox></td>
                </tr>
                <tr><td></td>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Total Fee"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="feeTextBox" runat="server" ReadOnly="True"></asp:TextBox></td></tr>
                <tr><td></td>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Paid Amount"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="paidTextBox" runat="server" ReadOnly="True"></asp:TextBox></td></tr>
                <tr><td></td>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text="Due Amount"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="dueTextBox" runat="server" ReadOnly="True"></asp:TextBox></td></tr>

                <tr><td></td></tr>

                <tr><td></td>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text="Amount"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="amountTextBox" runat="server"></asp:TextBox></td></tr>
                <tr><td></td>
                    <td>
                        <asp:Button ID="payButton" runat="server" Text="Pay" Width="75px" OnClick="payButton_Click" /></td>
                    <td>
                        <asp:Label ID="notificationLabel" runat="server" style ="color:crimson" ></asp:Label></td>
                </tr>
            </table>

        </div> 
          
        
    
    </form>
                    
                    

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
    
    
    
    
    </body>
</html>














<%--<!DOCTYPE html>
<link href="Style/main.css" rel="stylesheet" />
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div class ='Logo'></div>
        <div class ='Header_Image'></div>

        <div class ='Left_Div'>
            <div class='E1'></div>
            <div class='E2'></div>
            <div class='E3'></div>
            <div class='E4'></div>
        </div>
        <div class ='Header_Div'><h1>&nbsp;Bill Payment </h1></div>
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
                        <a href="TestWiseReportUI.aspx">Test wise report</a>
                    </td>
                </tr>
                <tr>
                    <td>
                        <a href="TypeWiseReportUI.aspx">Type wise report</a>
                    </td>
                </tr>
                <tr>
                    <td>
                        <a href="UnpaidBillReportUI.aspx">Unpaid bill report</a>
                    </td>
                </tr>
            </table>
           
        </div>
        <div class ='Operation'>
            
            <table>
                <tr>
                    <td></td>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Bill No"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="billTextBox" runat="server"></asp:TextBox></td>
                    <td>
                        <asp:Button ID="searchButton" runat="server" Text="Search" OnClick="searchButton_Click" /></td>
                </tr>
            </table>
            <div>
                <asp:GridView ID="testsGridView" runat="server"></asp:GridView>
            </div>
            
            <table>
                <tr>
                    <td></td>
                   
                    <td>
                        <asp:Label ID="Label" runat="server" Text="Bill Date"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="dateTextBox" runat="server" ReadOnly="True"></asp:TextBox></td>
                </tr>
                <tr><td></td>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Total Fee"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="feeTextBox" runat="server" ReadOnly="True"></asp:TextBox></td></tr>
                <tr><td></td>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Paid Amount"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="paidTextBox" runat="server" ReadOnly="True"></asp:TextBox></td></tr>
                <tr><td></td>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text="Due Amount"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="dueTextBox" runat="server" ReadOnly="True"></asp:TextBox></td></tr>

                <tr><td></td></tr>

                <tr><td></td>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text="Amount"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="amountTextBox" runat="server"></asp:TextBox></td></tr>
                <tr><td></td>
                    <td>
                        <asp:Button ID="payButton" runat="server" Text="Pay" Width="75px" OnClick="payButton_Click" /></td>
                    <td>
                        <asp:Label ID="notificationLabel" runat="server"></asp:Label></td>
                </tr>
            </table>

        </div> 
          
        <div class="Footer" >Footer</div>
    </div>
    </form>
</body>
</html>--%>
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