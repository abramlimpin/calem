<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content" Runat="Server">
<div id="page-wrapper">

    <div class="container-fluid">
               <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">
                            Contact Us
                        </h1>
                        <div class="col-lg-6">
                            <h4>We would love to hear anything from you! Send us a message. </h4>
                            <br />
                            <div class="form-group">
                                <label class="control-label col-lg-4">E-mail Address</label>
                                <div class="col-lg-8">
                                    <asp:TextBox ID="txtEmail" runat="server" class="form-control" required="" />
                
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-lg-4">Name</label>
                                <div class="col-lg-8">
                                    <asp:TextBox ID="txtName" runat="server" class="form-control" required="" />
                
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-lg-4">Subject</label>
                                <div class="col-lg-8">
                                    <asp:TextBox ID="txtSubject" runat="server" class="form-control" required="" />
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-lg-4">Message</label>
                                <div class="col-lg-8">
                                    <asp:TextBox ID="txtMessage" runat="server" class="form-control" required="" TextMode="MultiLine" />
                                 </div>
                            </div>
                            <div class="form-group">
                                <div class="col-lg-offset-4 col-lg-8">
                                    <asp:Button class="btn btn-success" ID="btnSend" runat="server" Text="Send" 
                                        />
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="text-center">
                                <a href="https://www.facebook.com/CALEMPH">
                                    <i class="fa fa-facebook-square"></i>
                                    CALEMPH
                                </a>
                                <br />
                                <a href="https://twitter.com/calemph">
                                    <i class="fa fa-twitter-square"></i>
                                    @calemph
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
        </div>
    </div>
</asp:Content>

