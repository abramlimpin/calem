<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Profile.aspx.cs" Inherits="Account_Profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content" Runat="Server">
    <div id="page-wrapper">
        <div class="container-fluid"> 
            <!-- Page Heading -->
                <div class="row">
                    <div class="col-lg-6">
                        <h1 class="page-header">
                            Profile
                        </h1>

                        <div class="form-group">
                            <label class="control-label col-lg-4">Username</label>
                            <div class="col-lg-8">
                                <asp:TextBox ID="txtUsername" runat="server" class="form-control" required="" />
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-lg-4">Image</label>
                            <div class="col-lg-8">
                                <asp:Image ID="imgUsers" runat="server" class="img-responsive" Width="200" />
                                <asp:FileUpload ID="fuImage" runat="server" class="form-control" />
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-lg-4">Address</label>
                            <div class="col-lg-8">
                                <asp:TextBox ID="txtAddress" runat="server" class="form-control"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-lg-4">Contact No.</label>
                            <div class="col-lg-8">
                                <asp:TextBox ID="txtContactNo" runat="server" class="form-control" />
                            </div>
                        </div>
                            <div class="form-group">
                            <label class="control-label col-lg-4">About Me</label>
                            <div class="col-lg-8">
                                <asp:TextBox ID="txtAboutMe" runat="server" class="form-control" 
                                    TextMode="MultiLine" />
                            </div>
                        </div>
                            <div class="form-group">
                            <div class="col-lg-offset-4 col-lg-8">
                                <asp:Button ID="btnUpdate" runat="server"
                                Text="Update" Visible="False" class="btn btn-default" 
                                    />
                            </div> 
                        </div>
                        </div>
                    </div>
            </div>
        </div>
</asp:Content>

