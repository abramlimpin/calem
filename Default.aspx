<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content" Runat="Server">
    
        <div id="page-wrapper" style="height: 92vh;">

        </div>
    <script>

        function getCurrentLocation(map) {
            map.setCenter({ lat: 14.5588542, lng: 121.0174931 });
            map.setZoom(17);

            var current = new H.map.Marker({ lat: 14.5588542, lng: 121.0174931 });
            map.addObject(current);
        }


        // Initialize the platform object:
        var platform = new H.service.Platform({
            'app_id': 'sppQjlif19K1dqZV2Pw4',
            'app_code': 'V-WpPXOoIDFmSRWUJkT_fg'
        });

        // Get the default map types from the Platform object:
        var defaultLayers = platform.createDefaultLayers();

        //Step 2: initialize a map  - not specificing a location will give a whole world view.
        var map = new H.Map(document.getElementById('page-wrapper'),
          defaultLayers.normal.map);

        //Step 3: make the map interactive
        // MapEvents enables the event system
        // Behavior implements default interactions for pan/zoom (also on mobile touch environments)
        var behavior = new H.mapevents.Behavior(new H.mapevents.MapEvents(map));

        // Create the default UI components
        var ui = H.ui.UI.createDefault(map, defaultLayers);

        getCurrentLocation(map);

    </script>
</asp:Content>

