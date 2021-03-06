﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TestSetupUI.aspx.cs" Inherits="DiagnosticCenterBillManagementSystemApp.UI.TestSetupUI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>TEST SETUP | Diagnostic Center Bill Management System </title>
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
                    <li class="active-link">
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
                     <h2>Test Setup</h2>   
                    </div>
                </div>              
                 <!-- /. ROW  -->
                  <hr />
              
                 <!-- /. ROW  -->       
                
                <form id="form1" runat="server">
    <div>
        <asp:Label ID="notificationLabel" runat="server" Text="" style ="color:crimson" ></asp:Label>
        <table>
            <tr><br/>
                <td>
                   <asp:Label ID="Label1" runat="server" Text="Test Name"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="testNameTextBox" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Fee"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="feeTextBox" runat="server" TextMode="Number"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Test Type"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="testTypeDropDownList" runat="server" AppendDataBoundItems="True">
                        <asp:ListItem Selected="True" Value="0">--Select--</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
        </table>
        <br/>
        <asp:Button ID="saveButton" runat="server" Text="Save" style="margin-left: 162px" OnClick="saveButton_Click" />
        
        <br/>
        <asp:GridView ID="testSetupGridView" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
            
            <Columns> 
                <asp:TemplateField HeaderText="SL" >
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text="<%#Container.DataItemIndex+1 %>" Width="50"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <Columns> 
                <asp:TemplateField HeaderText="Test Name">
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%#Eval("TestName") %>' Width="100"></asp:Label>
                    
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <Columns> 
                <asp:TemplateField HeaderText="Fee">
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%#Eval("Fee") %>' Width="100"></asp:Label>
                    
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            
            <Columns> 
                <asp:TemplateField HeaderText="Type">
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%#Eval("TypeName") %>' Width="100"></asp:Label>
                    
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            
        </asp:GridView>

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
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

   <%-- <form id="form1" runat="server">
    <div>
       <h1>Test Setup </h1>
        <br/>
        <asp:Label ID="notificationLabel" runat="server" Text=""></asp:Label>
        <table>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Test Name"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="testNameTextBox" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Fee"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="feeTextBox" runat="server" TextMode="Number"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Test Type"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="testTypeDropDownList" runat="server"></asp:DropDownList>
                </td>
            </tr>
        </table>
        <br/>
        <asp:Button ID="saveButton" runat="server" Text="Save" style="margin-left: 162px" OnClick="saveButton_Click" />
        
        <br/>
        <asp:GridView ID="testSetupGridView" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
            
            <Columns> 
                <asp:TemplateField HeaderText="SL" >
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text="<%#Container.DataItemIndex+1 %>" Width="50"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <Columns> 
                <asp:TemplateField HeaderText="Test Name">
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%#Eval("TestName") %>' Width="100"></asp:Label>
                    
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <Columns> 
                <asp:TemplateField HeaderText="Fee">
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%#Eval("Fee") %>' Width="100"></asp:Label>
                    
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            
            <Columns> 
                <asp:TemplateField HeaderText="Type">
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%#Eval("TypeName") %>' Width="100"></asp:Label>
                    
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            
        </asp:GridView>

    </div>
    </form--%>>
</body>
</html>
