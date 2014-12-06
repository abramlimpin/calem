<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Profile.aspx.cs" Inherits="Account_Profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content" Runat="Server">
    <div id="page-wrapper">
        <div class="container-fluid"> 
            <!-- Page Heading -->
                        <div class="row">
                            <div class="col-lg-12">
                                <h1 class="page-header">
                                    Profile
                                </h1>

                                <div class="form-group">
                                    <label class="control-label col-lg-4">Email Address</label>
                                    <div class="col-lg-8">
                                        <asp:TextBox ID="txtEmail" runat="server" class="form-control" Enabled="False" required="" />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-lg-4">Password</label>
                                    <div class="col-lg-8">
                                        <asp:TextBox ID="txtPassword" runat="server" class="form-control" Enabled="False" TextMode="Password" />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-lg-4">Image</label>
                                    <div class="col-lg-8">
                                        <asp:Image ID="imgUsers" runat="server" class="img-responsive" Width="200" />
                                        <asp:FileUpload ID="fuImage" runat="server" class="form-control" Visible="False"/>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-lg-4">First Name</label>
                                    <div class="col-lg-8">
                                        <asp:TextBox ID="txtFirstName" runat="server" class="form-control" Enabled="False" required />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-lg-4">Middle Initial</label>
                                    <div class="col-lg-8">
                                        <asp:TextBox ID="txtMI" runat="server" class="form-control" Enabled="False" required=""/>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-lg-4">Last Name</label>
                                    <div class="col-lg-8">
                                        <asp:TextBox ID="txtLastName" runat="server" class="form-control" Enabled="False" required />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-lg-4">Address</label>
                                    <div class="col-lg-8">
                                        <asp:TextBox ID="txtAddress" runat="server" Enabled="False" class="form-control"/>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-lg-4">Contact No.</label>
                                    <div class="col-lg-8">
                                        <asp:TextBox ID="txtContactNo" runat="server" Enabled="False" class="form-control" />
                                    </div>
                                </div>
                                 <div class="form-group">
                                    <label class="control-label col-lg-4">About Me</label>
                                    <div class="col-lg-8">
                                        <asp:TextBox ID="txtAboutMe" runat="server" Enabled="False" class="form-control" 
                                            TextMode="MultiLine" />
                                    </div>
                                </div>
                                 <div class="form-group">
                                    <div class="col-lg-offset-4 col-lg-8">
                                    <asp:Button ID="btnEdit" runat="server"  
                                        Text="Edit" class="btn btn-default" onclick="btnEdit_Click"/>
                                    &nbsp;
                                    <asp:Button ID="btnUpdate" runat="server"
                                        Text="Update" Visible="False" class="btn btn-default" 
                                            />
                                    &nbsp;
                                    <asp:Button ID="btnCancel" runat="server"
                                        Text="Cancel" Visible="False" class="btn btn-default" 
                                           onclick="btnCancel_Click"/>
                                    </div> 
                                </div>
                                </div>
                            </div>
            </div>
        </div>
</asp:Content>

