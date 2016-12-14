﻿<%@ Page Title="" Language="C#" MasterPageFile="~/View/Order/Order.Master" AutoEventWireup="true" CodeBehind="InfoMailDe.aspx.cs" Inherits="SOFENGG_Order_Request_Document.View.Order.InfoMailDe" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <!-- Always change the css file name to html file name! -->
    <link rel="stylesheet" href="/Content/css/info_mail_de.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="container-fluid center-block" style="width:800px;">
        <ul class="breadcrumb">
                &nbsp;
                <li><asp:HyperLink id="hlPersonal" 
                        NavigateUrl="PersonalInformation.aspx" 
                        Text="Personal Information" 
                        runat="server"/>
                </li>
                <li>
                <asp:HyperLink id="hlAcademic" 
                    NavigateUrl="InfoAcadDe.aspx" 
                    Text="Academic Information" 
                    runat="server"/>
                </li>
                <li class="active">Mailing Information</li>
        </ul>
        
        <h4 class="content-header">Mailing Information</h4>
        <blockquote>
            <p>
                 This step allows you to enter your mailing information.
                 <br>
                 <br>
                You may want your documents delivered to more than one mailing address. Enter the addresses here.
            </p>
        </blockquote>
        <table class="table table-striped">
            <tr class="delivery-info">
                <td class="content-form_label">Mailing Address</td>
                <td>
                    <asp:TextBox ID="txtMailAddress" CssClass="form-control" runat="server" TextMode="MultiLine"></asp:TextBox>
                    <asp:RequiredFieldValidator id="rfvMailAddress" runat="server"
                            ControlToValidate="txtMailAddress"
                            ErrorMessage="Please enter your mailing address."
                            ForeColor="Red">
                        </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr class="delivery-info">
                <td class="content-form_label">Zip Code</td>
                <td>
                    <asp:TextBox ID="txtZipCode" CssClass="form-control" Width="50px" MaxLength="4" runat="server"></asp:TextBox>
					<asp:RegularExpressionValidator runat="server" id="rexZipCode" 
						controltovalidate="txtZipCode" validationexpression="^[0-9]{4}$" errormessage="Please enter a 4-digit zip code!" />
                    <asp:RequiredFieldValidator id="rfvZipCode" runat="server"
                            ControlToValidate="txtZipCode"
                            ErrorMessage="Zip code is a required field."
                            ForeColor="Red">
                    </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr class="delivery-info">
                <td class="content-form_label">Delivery Area</td>
                <td>
                    <asp:DropDownList ID="ddlDelivery" runat="server" Width="200px">
                    </asp:DropDownList>

                    <!-- DELIVERY RATES (pop-up)
                    <a onclick="javascript:window.open ('popDelivery.asp','help','scrollbars=yes,
															resizable=no,width=575,height=500,top=100,
															left=100');return false;" href="/#">
                        <img src="../images/xis_sm2.gif" alt="delivery rates" border="0">
                    </a>
                    -->
                    <asp:RequiredFieldValidator id="rfvDelivery" runat="server"
                            ControlToValidate="ddlDelivery"
                            ErrorMessage="Select the appropriate delivery area for the inputted mailing address."
                            ForeColor="Red">
                        </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr class="delivery-info">
                <td class="content-form_label">Mailing Contact Number</td>
                <td>
                    <asp:TextBox ID="txtMailingNum" CssClass="form-control" runat="server"></asp:TextBox>
                    <div id="errorMailingNum" class="alert alert-dismissible alert-danger" style="display: none;">
                        <button type="button" class="close" data-dismiss="alert">&times;</button>
                        <strong>Oh my goodness!</strong> Contact number must only contain numbers.
                    </div>
                    <asp:RequiredFieldValidator id="rfvMailingNum" runat="server"
                            ControlToValidate="txtMailingNum"
                            ErrorMessage="Mailing number is a required field."
                            ForeColor="Red">
                    </asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>
       <ul class="pager">
            <li class="previous disabled"><a href="#">&larr; Previous</a></li>
            <li class="next"><asp:LinkButton text="Next &rarr;" runat="server" OnClick="SubmitMailInfo"></asp:LinkButton></li>
        </ul>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="script" runat="server">
</asp:Content>