<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content" Runat="Server">
    
        <div id="page-wrapper" style="height: 92vh;">

        </div>
    <script>
        // Initialize the platform object:
        var platform = new H.service.Platform({
            'app_id': 'sppQjlif19K1dqZV2Pw4',
            'app_code': 'V-WpPXOoIDFmSRWUJkT_fg'
        });

        // Obtain the default map types from the platform object
        var maptypes = platform.createDefaultLayers();

        // Instantiate (and display) a map object:
        var map = new H.Map(
        document.getElementById('page-wrapper'),
        maptypes.normal.map,
        {
            zoom: 10,
            center: { lng: 13.4, lat: 52.51 }
        });
    </script>
</asp:Content>

