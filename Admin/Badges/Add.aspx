<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Add.aspx.cs" Inherits="Admin_Badges_Add" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content" Runat="Server">
    <div class="row">
        <div class="col-lg-6">
            <div class="page-header">
                <h1>Add a Badge</h1>
            </div>
            <div class="row">
                <div class="form-group">
                    <label class="control-label col-lg-4">Rank</label>
                    <div class="col-lg-8">
                        <asp:TextBox ID="txtRank" runat="server" CssClass="form-control" required />
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-lg-4">Description</label>
                    <div class="col-lg-8">
                        <asp:TextBox ID="txtDesc" runat="server" TextMode="MultiLine" CssClass="form-control" required />
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-lg-4">Image</label>
                    <div class="col-lg-8">
                        <asp:FileUpload ID="fuImage" runat="server" CssClass="form-control" required />
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-lg-offset-4 col-lg-8">
                        <asp:Button ID="btnAdd" runat="server" CssClass="btn btn-success" Text="Add" OnClick="btnAdd_Click" />
                    </div>
                </div>
                <br /><br /><br /><br /><br />
            </div>
        </div>
    </div>
</asp:Content>

