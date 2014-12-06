<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Submit.aspx.cs" Inherits="Account_Crime_Submit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content" Runat="Server">
     <div id="page-wrapper">
        <div class="container-fluid"> 
            <!-- Page Heading -->
                        <div class="row">
                            <div class="col-lg-12">
                                <h1 class="page-header">
                                    Report A Crime
                                </h1>
                                <div class="form-group">
                                    <label class="control-label col-lg-4">Category</label>
                                        <div class="col-lg-8">
                                            <asp:DropDownList ID="ddlCategory" runat="server" class="form-control"></asp:DropDownList>
                                        </div>
                                </div> 
                                <div class="form-group">
                                    <label class="control-label col-lg-4">Title</label>
                                        <div class="col-lg-8">
                                            <asp:TextBox ID="txtCrime" runat="server" class="form-control" required=""/>
                                        </div>
                                </div> 
                                <div class="form-group">
                                            <label class="control-label col-lg-4">Description</label>
                                            <div class="col-lg-8">
                                                <asp:TextBox ID="txtDescription" runat="server" required="" 
                                                TextMode="MultiLine" Width="100%" class="form-control" 
                                                    />
                                            </div>
                                </div>
                                <div class="form-group">
                                            <label class="control-label col-lg-4">Date of Crime</label>
                                            <div class="col-lg-8">
                                                <asp:TextBox ID="txtCrimeDate" runat="server" 
                                                class="form-control" type="date" />
                                            </div>
                                </div>
                                <div class="form-group">
                                            <label class="control-label col-lg-4">Longitude</label>
                                            <div class="col-lg-8">
                                                <asp:TextBox ID="txtLongitude" runat="server" 
                                                class="form-control"/>
                                            </div>
                                </div>
                                <div class="form-group">
                                            <label class="control-label col-lg-4">Latitude</label>
                                            <div class="col-lg-8">
                                                <asp:TextBox ID="txtLatitude" runat="server" 
                                                class="form-control" />
                                            </div>
                                </div>
                                <div class="form-group">
                                            <div class="col-lg-offset-4 col-lg-8">
                                                <asp:Button ID="btSubmit" runat="server" Text="Add" 
                                                    class="btn btn-success" />
                                             </div>
                                </div>
                                 </div>
                        </div>
        </div>
     </div>
</asp:Content>

