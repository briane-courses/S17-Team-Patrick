﻿<%@ Page Title="" Language="C#" MasterPageFile="~/View/Order/Order.Master" AutoEventWireup="true" CodeBehind="DocumentList.aspx.cs" Inherits="SOFENGG_Order_Request_Document.View.Order.DocumentList" %>
<%@ Import Namespace="System.ComponentModel" %>
<%@ Import Namespace="SOFENGG_Order_Request_Document.Model" %>
<%@ Import Namespace="SOFENGG_Order_Request_Document.Model.Helper" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- Always change the css file name to html file name! -->
    <link rel="stylesheet" href="/Content/css/document_list.css"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="col-xs-3">
        <h5> Request Flow</h5>
        <ul>
            <li>
                <a href="personal_information.html">Personal Information</a>
            </li>
            <li>
                <a href="info_acad_de.html">Academic Information</a>
            </li>
            <li>
                <a href="info_mail_de.html">Mailing Information</a>
            </li>
            <li>
                <b>Document List</b>
            </li>
            <li>
                <a href="info_transaction.html">Checkout</a>
            </li>
        </ul>
        <div class="content-divider"></div>
        <h5>User Information</h5>
        <ul>
            <li>Name</li>
            <li>Address</li>
            <li>ID Number</li>
        </ul>
    </div>
    <div class="col-xs-9">
        <h5 class="content-header">Document List</h5>
        <div>
            <table border="1" class="content-document">
                <tr>
                    <td colspan="1" class="content-document-header" >Below is a list of documents that you can request from the OUR. Press the order link to the document you want to order.</td>
                </tr>
                <tr>
                    <td colspan="4" class="content-document-header">Transcript of Records</td>
                </tr>
            </table>
            <asp:GridView ID="gvTOR" AutoGenerateColumns="False" runat="server">
                <Columns >
                    <asp:TemplateField HeaderText="Document">
                        <ItemTemplate>
                            <asp:Label runat="server" Text='<%# Bind("Name") %>' ID="lbName"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Regular Price">
                        <ItemTemplate>
                            <asp:Label runat="server" Text='<%# Bind("RegularPrice") %>' ID="lbRegularPrice"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Express Price">
                        <ItemTemplate>
                            <asp:Label runat="server" Text='<%# Bind("ExpressPrice") %>' ID="lbExpressPrice"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField> 
                    <asp:HyperLinkField Text="Order" navigateurl="~\details.aspx" />
                </Columns>
            </asp:GridView>


            <table>
                <tr>
                    <td colspan="4" class="content-document-header">Certification</td>
                </tr>
            </table>
            <asp:GridView ID="gvCertification" AutoGenerateColumns="False" runat="server">
                <Columns >
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:Label runat="server" Text='<%# Bind("Name") %>' ID="lbName"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:Label runat="server" Text='<%# Bind("RegularPrice") %>' ID="lbRegularPrice"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:Label runat="server" Text='<%# Bind("ExpressPrice") %>' ID="lbExpressPrice"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField> 
                    <asp:HyperLinkField Text="Order" navigateurl="~\details.aspx" />
                </Columns>
            </asp:GridView>

            <table>
                <tr>
                    <td colspan="4" class="content-document-header">Certified True Copy</td>
                </tr>
            </table>

            <asp:GridView ID="gvTrueCopy" AutoGenerateColumns="False" runat="server">
                <Columns >
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:Label runat="server" Text='<%# Bind("Name") %>' ID="lbName"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:Label runat="server" Text='<%# Bind("RegularPrice") %>' ID="lbRegularPrice"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:Label runat="server" Text='<%# Bind("ExpressPrice") %>' ID="lbExpressPrice"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField> 
                    <asp:HyperLinkField Text="Order" navigateurl="~\details.aspx" />
                </Columns>
            </asp:GridView>

            <table>
                <tr>
                    <td colspan="4" class="content-document-header">Others</td>
                </tr>
            </table>

            <asp:GridView ID="gvOthers" AutoGenerateColumns="False" runat="server">
                <Columns >
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:Label runat="server" Text='<%# Bind("Name") %>' ID="lbName"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:Label runat="server" Text='<%# Bind("RegularPrice") %>' ID="lbRegularPrice"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:Label runat="server" Text='<%# Bind("ExpressPrice") %>' ID="lbExpressPrice"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField> 
                    <asp:HyperLinkField Text="Order" navigateurl="~\details.aspx" />
                </Columns>
            </asp:GridView>

            <table>
                <tr>
                    <td colspan="4" class="content-document-header">Special</td>
                </tr>
            </table>

            <asp:GridView ID="gvSpecial" AutoGenerateColumns="False" runat="server">
                <Columns >
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:Label runat="server" Text='<%# Bind("Name") %>' ID="lbName"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:Label runat="server" Text='<%# Bind("RegularPrice") %>' ID="lbRegularPrice"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:Label runat="server" Text='<%# Bind("ExpressPrice") %>' ID="lbExpressPrice"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField> 
                    <asp:HyperLinkField Text="Order" navigateurl="~\details.aspx" />
                </Columns>
            </asp:GridView>

            

        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="script" runat="server">
</asp:Content>