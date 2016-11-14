﻿<%@ Page Title="" Language="C#" MasterPageFile="~/View/Order/Order.Master" AutoEventWireup="true" CodeBehind="InfoMailDe.aspx.cs" Inherits="SOFENGG_Order_Request_Document.View.Order.InfoMailDe" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <!-- Always change the css file name to html file name! -->
    <link rel="stylesheet" href="/Content/css/info_mail_de.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="col-xs-3">
        <h5>Request Flow</h5>
        <ul>
            <li>
                <a href="personal_information.html">Personal Information</a>
            </li>
            <li>
                <a href="info_acad_de.html">Academic Information</a>
            </li>
            <li>
                <b>Mailing Information</b>
            </li>
            <li>Document List</li>
            <li>Checkout</li>
        </ul>
        <div class="content-divider"></div>
    </div>

    <div class="col-xs-9">
        <h5 class="content-header">Mail Information</h5>

        <p>
            This step allows you to enter your mailing information.
            <br>
            <br>
            You may want your documents delivered to more than one mailing address. Enter the addresses here.
        </p>
        <form action=""></form>
        <table border=1 class="content-form">

            <tr class="delivery-info">
                <td class="content-form_label">Mailing Address</td>
                <td style="padding-left: 5px; padding-bottom: 3px;">
                    <asp:TextBox ID="txtMailAddress" runat="server" TextMode="MultiLine"></asp:TextBox>
                    <asp:RequiredFieldValidator id="rfvMailAddress" runat="server"
                        ControlToValidate="txtMailAddress"
                        ErrorMessage="Mailing address is a required field."
                            ForeColor="Red">
                    </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr class="delivery-info">
                <td class="content-form_label">Zip Code</td>
                <td>
                    &nbsp;
                    <asp:TextBox ID="txtZipCode" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator id="rfvZipCode" runat="server"
                        ControlToValidate="txtZipCode"
                        ErrorMessage="Zip code is a required field."
                            ForeColor="Red">
                    </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr class="delivery-info">
                <td class="content-form_label">Delivery Area</td>

                <td style="padding-left: 5px;">
                    <asp:DropDownList ID="ddlDelivery" runat="server" Width="200px">
                        <asp:ListItem Text="Select Area" Value="0"></asp:ListItem>
                        <asp:ListItem Text="Africa" Value="1"></asp:ListItem>
                        <asp:ListItem Text="Australia" Value="2"></asp:ListItem>
                        <asp:ListItem Text="Brunei" Value="3"></asp:ListItem>
                        <asp:ListItem Text="Canada" Value="4"></asp:ListItem>
                        <asp:ListItem Text="China" Value="5"></asp:ListItem>
                        <asp:ListItem Text="Europe" Value="6"></asp:ListItem>
                        <asp:ListItem Text="Fiji" Value="7"></asp:ListItem>
                        <asp:ListItem Text="Guam" Value="8"></asp:ListItem>
                        <asp:ListItem Text="Hong Kong / Singapore" Value="9"></asp:ListItem>
                        <asp:ListItem Text="Indonesia / Malaysia / Taiwan / Thailand" Value="10"></asp:ListItem>
                        <asp:ListItem Text="Japan" Value="11"></asp:ListItem>
                        <asp:ListItem Text="Mexico City" Value="12"></asp:ListItem>
                        <asp:ListItem Text="Middle East" Value="13"></asp:ListItem>
                        <asp:ListItem Text="New Zealand" Value="14"></asp:ListItem>
                        <asp:ListItem Text="Papua New Guinea" Value="15"></asp:ListItem>
                        <asp:ListItem Text="Philippines: Luzon" Value="16"></asp:ListItem>
                        <asp:ListItem Text="Philippines: Metro Manila" Value="17"></asp:ListItem>
                        <asp:ListItem Text="Philippines: Visayas" Value="18"></asp:ListItem>
                        <asp:ListItem Text="Philippines: Mindanao" Value="19"></asp:ListItem>
                        <asp:ListItem Text="South Korea" Value="20"></asp:ListItem>
                        <asp:ListItem Text="USA" Value="21"></asp:ListItem>
                        <asp:ListItem Text="South America" Value="22"></asp:ListItem>
                        <asp:ListItem Text="Vietname" Value="23"></asp:ListItem>
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
                        ErrorMessage="Please select the delivery area of your choice."
                            ForeColor="Red">
                    </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr class="delivery-info">
                <td class="content-form_label">Mailing Contact Number</td>
                <td>&nbsp;
                    <asp:TextBox ID="txtMailingNum" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator id="rfvMailingNum" runat="server"
                        ControlToValidate="txtMailingNum"
                        ErrorMessage="Mailing number is a required field."
                            ForeColor="Red">
                    </asp:RequiredFieldValidator>
                </td>
            </tr>


        </table>
        <a href="info_mail_confirm.html">
            <asp:Button class="btn btn-primary content-form_next" runat="server">Next</asp:button>
        </a>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="script" runat="server">
</asp:Content>