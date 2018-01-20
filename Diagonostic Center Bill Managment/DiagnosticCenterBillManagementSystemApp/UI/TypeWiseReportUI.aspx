<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TypeWiseReportUI.aspx.cs" Inherits="DiagnosticCenterBillManagementSystemApp.UI.TypeWiseReportUI" %>




<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>TYPE WISE RESULT | Diagnostic Center Bill Management System </title>
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
                 

                    <li >
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
                    <li class="active-link">
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
                     <h2>Type Wise Result</h2>   
                    </div>
                </div>              
                 <!-- /. ROW  -->
                  <hr />
              
                 <!-- /. ROW  -->       
                <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="From Date"></asp:Label> 
                    </td>
                    <td>
                        <asp:TextBox ID="fromDateTextBox" runat="server" ></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="To Date"></asp:Label> 
                    </td>
                    <td>
                        <asp:TextBox ID="toDateTextBox" runat="server" ></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="showButton" runat="server" Text="Show" OnClick="showButton_Click" />
                    </td>
                </tr>
            </table>
            <asp:Label ID="notificationLabel" runat="server" Text="" style ="color:crimson" ></asp:Label>
            <br/>
            <asp:GridView ID="typeReportGridView" runat="server" AutoGenerateColumns="False">
                <Columns>
                    <asp:TemplateField HeaderText="SL">
                        <ItemTemplate>
                            <asp:Label ID="id" runat="server" Text='<%# Container.DataItemIndex + 1 %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <Columns>
                    <asp:TemplateField HeaderText="Test Type Name">
                        <ItemTemplate>
                            <asp:Label ID="testTypeName" runat="server" Text='<%# Eval("TestTypeName") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <Columns>
                    <asp:TemplateField HeaderText="Total no Of Test">
                        <ItemTemplate>
                            <asp:Label ID="totalNoOfTest" runat="server" Text='<%# Eval("TotalNoOfTest") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <Columns>
                    <asp:TemplateField HeaderText="Total Amount">
                        <ItemTemplate>
                            <asp:Label ID="totalAmount" runat="server" Text='<%# Eval("TotalAmount") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <br/>
            <table>
                <tr>
                    <td>
                        <asp:Button ID="pdfButton" runat="server" Text="PDF" Width="68px" OnClick="pdfButton_Click" />
                    </td>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Total Amount"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="totalAmountTextBox" runat="server" ReadOnly="True"></asp:TextBox> 
                    </td>
                </tr>
            </table>
        </div>    
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









                <%--<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="From Date"></asp:Label> 
                    </td>
                    <td>
                        <asp:TextBox ID="fromDateTextBox" runat="server" ></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="To Date"></asp:Label> 
                    </td>
                    <td>
                        <asp:TextBox ID="toDateTextBox" runat="server" ></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="showButton" runat="server" Text="Show" OnClick="showButton_Click" />
                    </td>
                </tr>
            </table>
            <asp:Label ID="notificationLabel" runat="server" Text="Label"></asp:Label>
            <br/>
            <asp:GridView ID="typeReportGridView" runat="server" AutoGenerateColumns="False">
                <Columns>
                    <asp:TemplateField HeaderText="SL">
                        <ItemTemplate>
                            <asp:Label ID="id" runat="server" Text='<%# Container.DataItemIndex + 1 %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <Columns>
                    <asp:TemplateField HeaderText="Test Type Name">
                        <ItemTemplate>
                            <asp:Label ID="testTypeName" runat="server" Text='<%# Eval("TestTypeName") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <Columns>
                    <asp:TemplateField HeaderText="Total no Of Test">
                        <ItemTemplate>
                            <asp:Label ID="totalNoOfTest" runat="server" Text='<%# Eval("TotalNoOfTest") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <Columns>
                    <asp:TemplateField HeaderText="Total Amount">
                        <ItemTemplate>
                            <asp:Label ID="totalAmount" runat="server" Text='<%# Eval("TotalAmount") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <br/>
            <table>
                <tr>
                    <td>
                        <asp:Button ID="pdfButton" runat="server" Text="PDF" Width="68px" OnClick="pdfButton_Click" />
                    </td>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Total Amount"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="totalAmountTextBox" runat="server" ReadOnly="True"></asp:TextBox> 
                    </td>
                </tr>
            </table>
        </div>--%>
    </form>
     <script src="Scripts/jquery-1.4.1.min.js" type="text/javascript"></script>
<script src="Scripts/jquery.dynDateTime.min.js" type="text/javascript"></script>
<script src="Scripts/calendar-en.min.js" type="text/javascript"></script>
<link href="Style/calendar-blue.css" rel="stylesheet" type="text/css" /> 
<script type="text/javascript">
    $(document).ready(function () {
        $("#<%=fromDateTextBox.ClientID %>").dynDateTime({
            showsTime: true,
            ifFormat: "%Y/%m/%d",
            daFormat: "%l;%M %p, %e %m, %Y",
            align: "BR",
            electric: false,
            singleClick: false,
            displayArea: ".siblings('.dtcDisplayArea')",
            button: ".next()"
        });
        $("#<%=toDateTextBox.ClientID %>").dynDateTime({
            showsTime: true,
            ifFormat: "%Y/%m/%d",
            daFormat: "%l;%M %p, %e %m, %Y",
            align: "BR",
            electric: false,
            singleClick: false,
            displayArea: ".siblings('.dtcDisplayArea')",
            button: ".next()"
        });
    });
</script>
</body>
</html>
