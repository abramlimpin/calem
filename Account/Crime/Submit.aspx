<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Submit.aspx.cs" Inherits="Account_Crime_Submit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content" Runat="Server">
     <div id="page-wrapper">
        <div class="container-fluid"> 
            <!-- Page Heading -->
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">
                            Report a Crime
                        </h1>
                        <div class="col-lg-6">
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
                                <label class="control-label col-lg-4">Location</label>
                                <div class="col-lg-8">
                                    <asp:TextBox ID="txtLocation" TextMode="MultiLine" runat="server" 
                                    class="form-control"/>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div id="myMap" style="height: 250px;">

                            </div>
                            <script>
                                function setUpClickListener() {
                                    // Attach an event listener to map display
                                    // obtain the coordinates and display in an alert box.
                                    map.addEventListener('tap', function (evt) {
                                        var coord = map.screenToGeo(evt.currentPointer.viewportX,
                                                evt.currentPointer.viewportY);
                                        document.getElementById('txtLatitude').value = Math.abs(coord.lat.toFixed(7)) +
                                            ((coord.lat > 0) ? '' : '').toString();
                                        document.getElementById('txtLongitude').value = Math.abs(coord.lng.toFixed(7)) +
                                             ((coord.lng > 0) ? '' : '').toString();
                                    });
                                }

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
                                var map = new H.Map(document.getElementById('myMap'),
                                  defaultLayers.normal.map);

                                //Step 3: make the map interactive
                                // MapEvents enables the event system
                                // Behavior implements default interactions for pan/zoom (also on mobile touch environments)
                                var behavior = new H.mapevents.Behavior(new H.mapevents.MapEvents(map));

                                // Create the default UI components
                                var ui = H.ui.UI.createDefault(map, defaultLayers);

                                getCurrentLocation(map);
                                setUpClickListener();
    </script>
                            <br />
                            <div class="form-group">
                                <label class="control-label col-lg-4">Latitude</label>
                                <div class="col-lg-8">
                                    <asp:TextBox ID="txtLatitude" runat="server" 
                                    class="form-control" ClientIDMode="Static" />
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-lg-4">Longitude</label>
                                <div class="col-lg-8">
                                    <asp:TextBox ID="txtLongitude" runat="server" 
                                        class="form-control" ClientIDMode="Static" />
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-lg-offset-4 col-lg-8">
                                    <asp:Button ID="btSubmit" runat="server" Text="Add" 
                                        class="btn btn-success" OnClick="btSubmit_Click" />&nbsp;
                                    <a href="../PoliceReport.aspx" class="btn btn-info">Print</a>
                                </div>
                            </div>
                            <br /><br /><br /><br />
                        </div>
                    </div>
                </div>
            </div>
        </div>
</asp:Content>

