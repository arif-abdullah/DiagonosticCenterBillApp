<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TestRequestUI.aspx.cs" Inherits="DiagnosticCenterBillManagementSystemApp.UI.TestRequestUI" %>



<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>TEST REQUEST SETUP | Diagnostic Center Bill Management System </title>
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


                     <li class="active-link">
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
                     <h2>Test Request Setup</h2>   
                    </div>
                </div>              
                 <!-- /. ROW  -->
                  <hr />
              
                 <!-- /. ROW  -->       
                <form id="form1" runat="server">
                    
                    
                    <div class ='Operation'>
                         <div class ="Patient">
            <h2>Add New Patient</h2>
            <table>
                <tr>
                    <td>
                        <asp:Label ID="Label7" runat="server" Text="New Patiant "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="newPatientTextBox" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label6" runat="server" Text="Date of Birth "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="newDOBTextBox" runat="server" ></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label11" runat="server" Text="Mobile"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="newMobileTextBox" runat="server" type="number" TextMode="Number"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:Button ID="addPatientButton" runat="server" Text="Add Patient" OnClick="addPatientButton_Click" /></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="notificationLabel" runat="server" Text="" style ="color:crimson" ></asp:Label></td>
                </tr>
            </table>

    </div>
        <div class ="RequestEntry">
            <H2>Add New Request</H2>
            <table>
                
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text="Patiant Name"/>
                    </td>
                    <td>
                        <asp:DropDownList ID="patientDropDownList" runat="server" style="width: 145px; max-width: 145px" OnSelectedIndexChanged="patientDropDownList_SelectedIndexChanged" AutoPostBack="True"
                            AppendDataBoundItems="True">
                        <asp:ListItem Selected="True" Value="0">--Select--</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                
                <tr>
                    <td>
                        <asp:Label ID="Label8" runat="server" Text="Date Of Birth"></asp:Label>
                    </td>
                    <td>
                        
                        <asp:TextBox ID="dobTextBox" ReadOnly="True"  runat="server"  ></asp:TextBox>
                    </td>
                </tr>
                
                <tr>
                    <td>
                        <asp:Label ID="Label9" runat="server" Text="Mobile No"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="mobileTextBox" runat="server" ReadOnly="True"></asp:TextBox>
                    </td>
                </tr>
                
                <tr>
                    <td>
                        <asp:Label ID="Label10" runat="server" Text="Select Test"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="testDropDownList" runat="server" style="width: 145px; max-width: 145px" OnSelectedIndexChanged="testDropDownList_SelectedIndexChanged" AutoPostBack="True" AppendDataBoundItems="True">
                            
                            <asp:ListItem Selected="True" Value="0">--Select--</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr<>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text="Fee"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="feeTextBox" runat="server" ReadOnly="True"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="patientIdTextBox" runat="server" ReadOnly="True" Visible="False"></asp:TextBox></td>
                    <td> 
                        <asp:TextBox ID="testIdTextBox" runat="server" ReadOnly="True" Visible="False"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td>
                        
                       
                    </td>
                    <td>
                        <asp:Button ID="addButton" runat="server" Text="Add" OnClick="addButton_Click" Width="128px" /></td>
                </tr>
                <tr><td></td>
                    <td>
                        <asp:Label ID="testNotificationLabel" runat="server" Text="" style ="color:crimson" ></asp:Label></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="voucharLabel" runat="server" Visible="False"></asp:Label>
                    </td>
                    <td>
                        <asp:HiddenField ID="ReqMHiddenField" runat="server" />
                        <asp:TextBox ID="ReqMTextBox" runat="server" ReadOnly="False" Visible="False"></asp:TextBox>
                    </td>
                </tr>
            </table>
            
            <br/>
            <div class="TestGrid" >
                <asp:GridView ID="testGridView" runat="server" AutoGenerateColumns="False" >
                    <Columns>
                        <asp:TemplateField HeaderText="SL">
                            <ItemTemplate>
                                <asp:Label ID="id" runat="server" Text='<%# Container.DataItemIndex + 1 %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <Columns>
                        <asp:TemplateField HeaderText="Test Name">
                            <ItemTemplate>
                                <asp:Label ID="testName" runat="server" Text='<%# Eval("TestName") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <Columns>
                        <asp:TemplateField HeaderText="Fee">
                            <ItemTemplate>
                                <asp:Label ID="fee" runat="server" Text='<%# Eval("Fee") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <Columns>
                        <asp:TemplateField HeaderText="Test Id" Visible="False">
                            <ItemTemplate>
                                <asp:Label ID="testID" runat="server" Text='<%# Eval("TestId") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                <br/>
                <table>
                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" Text="Total" style="margin-left: 70px" Width="55px"></asp:Label> 
                        </td>
                        <td> <asp:TextBox ID="totalTextBox" runat="server" ReadOnly="True" Width="70px"></asp:TextBox></td>
                    </tr>
                </table>
               <tr>
                   <td>
                       <asp:Button ID="saveButton" runat="server" Text="Save" OnClick="saveButton_Click" style="margin-left: 146px" Width="133px" OnClientClick="this.disabled = true; this.value = 'Done';" 
                                   UseSubmitBehavior="false" /> 
                   </td>
                   <td>
                       <asp:Button ID="newButton" runat="server" Text="Refresh" style="margin-left: 146px" Width="133px" OnClick="newButton_Click1" />  
                   </td>
               </tr>
               
                <br/>
               
                
                
                <asp:GridView ID="newGridView" runat="server"  AutoGenerateColumns="False" Visible="False" Enabled="False">
                    <Columns>
                        <asp:TemplateField HeaderText="SL">
                            <ItemTemplate>
                                <asp:Label ID="id" runat="server" Text='<%# Container.DataItemIndex + 1 %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <Columns>
                        <asp:TemplateField HeaderText="Test Name">
                            <ItemTemplate>
                                <asp:Label ID="testName" runat="server" Text='<%# Eval("TestName") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <Columns>
                        <asp:TemplateField HeaderText="Fee">
                            <ItemTemplate>
                                <asp:Label ID="fee" runat="server" Text='<%# Eval("Fee") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </div>
        </div>
        
       
             <!-- /. PAGE INNER  -->
            
            </div>
         <!-- /. PAGE WRAPPER  -->
       
            </div>
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
<link href="Style/main.css" rel="stylesheet" />
<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title></title>
    </head>
    
    
<body>
<form id="form2" runat="server">

    <div class ='Logo'></div>
    <div class ='Header_Image'></div>

    <div class ='Left_Div'>
        <div class='E1'></div>
        <div class='E2'></div>
        <div class='E3'></div>
        <div class='E4'></div>
    </div>
    <div class ='Header_Div'><h1>&nbsp;Test Request</h1></div>
    <div class ='Menu'><h2>Menu</h2>
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
        <div class ="RequestEntry">
            <H2>Add New Request</H2>
            <table>
                
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text="Patiant Name"/>
                    </td>
                    <td>
                        <asp:DropDownList ID="patientDropDownList" runat="server" style="width: 145px; max-width: 145px" OnSelectedIndexChanged="patientDropDownList_SelectedIndexChanged" AutoPostBack="True"/>
                    </td>
                </tr>
                
                <tr>
                    <td>
                        <asp:Label ID="Label8" runat="server" Text="Date Of Birth"></asp:Label>
                    </td>
                    <td>
                        
                        <asp:TextBox ID="dobTextBox" ReadOnly="True"  runat="server" Type="Date" ></asp:TextBox>
                    </td>
                </tr>
                
                <tr>
                    <td>
                        <asp:Label ID="Label9" runat="server" Text="Mobile No"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="mobileTextBox" runat="server" ReadOnly="True"></asp:TextBox>
                    </td>
                </tr>
                
                <tr>
                    <td>
                        <asp:Label ID="Label10" runat="server" Text="Select Test"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="testDropDownList" runat="server" style="width: 145px; max-width: 145px" OnSelectedIndexChanged="testDropDownList_SelectedIndexChanged" AutoPostBack="True" ></asp:DropDownList>
                    </td>
                </tr>
                <tr<>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text="Fee"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="feeTextBox" runat="server" ReadOnly="True"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="patientIdTextBox" runat="server" ReadOnly="True" Visible="False"></asp:TextBox></td>
                    <td> 
                        <asp:TextBox ID="testIdTextBox" runat="server" ReadOnly="True" Visible="False"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td>
                        
                       
                    </td>
                    <td>
                        <asp:Button ID="addButton" runat="server" Text="Add" OnClick="addButton_Click" Width="128px" /></td>
                </tr>
                <tr><td></td>
                    <td>
                        <asp:Label ID="testNotificationLabel" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="voucharLabel" runat="server" Visible="False"></asp:Label>
                    </td>
                    <td>
                        <asp:HiddenField ID="ReqMHiddenField" runat="server" />
                        <asp:TextBox ID="ReqMTextBox" runat="server" ReadOnly="False" Visible="False"></asp:TextBox>
                    </td>
                </tr>
            </table>
            
            <br/>
            <div class="TestGrid" >
                <asp:GridView ID="testGridView" runat="server" AutoGenerateColumns="False" >
                    <Columns>
                        <asp:TemplateField HeaderText="SL">
                            <ItemTemplate>
                                <asp:Label ID="id" runat="server" Text='<%# Container.DataItemIndex + 1 %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <Columns>
                        <asp:TemplateField HeaderText="Test Name">
                            <ItemTemplate>
                                <asp:Label ID="testName" runat="server" Text='<%# Eval("TestName") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <Columns>
                        <asp:TemplateField HeaderText="Fee">
                            <ItemTemplate>
                                <asp:Label ID="fee" runat="server" Text='<%# Eval("Fee") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <Columns>
                        <asp:TemplateField HeaderText="Test Id" Visible="False">
                            <ItemTemplate>
                                <asp:Label ID="testID" runat="server" Text='<%# Eval("TestId") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                <br/>
                <table>
                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" Text="Total" style="margin-left: 70px" Width="55px"></asp:Label> 
                        </td>
                        <td> <asp:TextBox ID="totalTextBox" runat="server" ReadOnly="True" Width="70px"></asp:TextBox></td>
                    </tr>
                </table>
               <tr>
                   <td>
                       <asp:Button ID="saveButton" runat="server" Text="Save" OnClick="saveButton_Click" style="margin-left: 146px" Width="133px" /> 
                   </td>
                   <td>
                       <asp:Button ID="newButton" runat="server" Text="New Request" style="margin-left: 146px" Width="133px" OnClick="newButton_Click1" />  
                   </td>
               </tr>
               
                <br/>
               
                
                
                <asp:GridView ID="newGridView" runat="server"  AutoGenerateColumns="False" Visible="False" Enabled="False">
                    <Columns>
                        <asp:TemplateField HeaderText="SL">
                            <ItemTemplate>
                                <asp:Label ID="id" runat="server" Text='<%# Container.DataItemIndex + 1 %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <Columns>
                        <asp:TemplateField HeaderText="Test Name">
                            <ItemTemplate>
                                <asp:Label ID="testName" runat="server" Text='<%# Eval("TestName") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <Columns>
                        <asp:TemplateField HeaderText="Fee">
                            <ItemTemplate>
                                <asp:Label ID="fee" runat="server" Text='<%# Eval("Fee") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </div>
        </div>
        
        <div class ="Patient">
            <h2>Add New Patient</h2>
            <table>
                <tr>
                    <td>
                        <asp:Label ID="Label7" runat="server" Text="New Patiant "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="newPatientTextBox" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label6" runat="server" Text="Date of Birth "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="newDOBTextBox" runat="server" ></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label11" runat="server" Text="Mobile"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="newMobileTextBox" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:Button ID="addPatientButton" runat="server" Text="Add Patient" OnClick="addPatientButton_Click" /></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="notificationLabel" runat="server" Text=""></asp:Label></td>
                </tr>
            </table>
            
            
          </div>

    </div>   
    <div class="Footer" >Footer</div>--%>
    
</form>
    <script src="Scripts/jquery-1.4.1.min.js" type="text/javascript"></script>
<script src="Scripts/jquery.dynDateTime.min.js" type="text/javascript"></script>
<script src="Scripts/calendar-en.min.js" type="text/javascript"></script>
<link href="Style/calendar-blue.css" rel="stylesheet" type="text/css" /> 
<script type="text/javascript">
    $(document).ready(function () {
        $("#<%=newDOBTextBox.ClientID %>").dynDateTime({
            showsTime: true,
            ifFormat: "%Y/%m/%d",
            daFormat: "%l;%M %p, %e %m, %Y",
            align: "BR",
            electric: false,
            singleClick: false,
            displayArea: ".siblings('.dtcDisplayArea')",
            button: ".next()"
        });
<%--        $("#<%=dobTextBox.ClientID %>").dynDateTime({
            showsTime: true,
            ifFormat: "%Y/%m/%d",
            daFormat: "%l;%M %p, %e %m, %Y",
            align: "BR",
            electric: false,
            singleClick: false,
            displayArea: ".siblings('.dtcDisplayArea')",
            button: ".next()"
        });--%>
    });
</script>
    
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
