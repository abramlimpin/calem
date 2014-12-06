<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Badges.aspx.cs" Inherits="Badges" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content" Runat="Server">
    <div id="page-wrapper">

        <div class="container-fluid"> 
            <!-- Page Heading -->
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="text-center">
                                    <h2 class="page-header">
                                       <asp:Image ID="imgUser" runat="server" height="40" src="../img/users/unknown.png"/>
                                        <asp:Literal runat="server" ID="ltUser" Text="John Smith"/> has collected:
                                    </h2>
                                </div>
                            </div>

                            <asp:ListView ID="lvBadges" runat="server">
                                <ItemTemplate>
                                    <div class="col-lg-4">
                                        <div class="thumbnail">
                                            <div>
                                               <%-- Badge Image --%>
                                            </div>
                                            <div class="caption">
                                                <%-- Description
                                                    Date --%>
                                            </div>
                                        </div>
                                    </div>
                                </ItemTemplate>
                            </asp:ListView>
                        </div>
                        <!-- /.row -->
            </div>
        </div>
</asp:Content>

