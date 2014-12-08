<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Details.aspx.cs" Inherits="Account_Crime_Details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content" Runat="Server">
    <div id="page-wrapper">

            <div class="container-fluid">

                <!-- Page Heading -->
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">
                            Crime Details <small><asp:Literal ID="ltID" runat="server" /> </small>
                        </h1>
                        <div class="col-lg-6">
                            <div class="form-group">
                                <label class="control-label col-lg-4">Crime</label>
                                <div class="col-lg-8">
                                    <asp:TextBox ID="txtCrime" runat="server" class="form-control" MaxLength="50" required />
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-lg-4">Date Reported </label>
                                <div class="col-lg-8">
                                    <asp:TextBox ID="txtDateReported" runat="server" class="form-control" type="date" MaxLength="300"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-lg-4">Category</label>
                                <div class="col-lg-8">
                                    <asp:DropDownList ID="ddlCategories" runat="server" class="form-control" />
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-lg-4"> Description </label>
                                <div class="col-lg-8">
                                    <asp:TextBox ID="txtDesc" runat="server" class="form-control" TextMode="MultiLine" MaxLength="300" required />
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-lg-4">Date Committed</label>
                                <div class="col-lg-8">
                                    <asp:TextBox ID="txtDateCommitted" runat="server" class="form-control" type="date"  />
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-lg-4">Date Confirmed</label>
                                <div class="col-lg-8">
                                    <asp:TextBox ID="txtDateConfirmed" runat="server" class="form-control" type="date"  />
                                </div>
                            </div>
                             <div class="form-group">
                                <label class="control-label col-lg-4">User</label>
                                <div class="col-lg-8">
                                    <asp:TextBox ID="txtUser" runat="server" class="form-control" />
                                    </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-lg-4">Status</label>
                                <div class="col-lg-8">
                                    <asp:TextBox ID="txtStatus" runat="server" class="form-control" />
                                    </div>
                            </div>
                    </div>
               
                    </div>
                </div>
                
            </div>
            <!-- /.container-fluid -->

        </div>
        <!-- /#page-wrapper -->
</asp:Content>

