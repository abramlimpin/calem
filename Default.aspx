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


        function addInfoBubble() {
            var group = new H.map.Group();

            map.addObject(group);

            // add 'tap' event listener, that opens info bubble, to the group
            group.addEventListener('tap', function (evt) {
                // event target is the marker itself, group is a parent event target
                // for all objects that it contains
                var bubble = new H.ui.InfoBubble(evt.target.getPosition(), {
                    // read custom data
                    content: evt.target.getData()
                });
                // show info bubble
                ui.addBubble(bubble);
            }, false);
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

        function addDomMarker(map) {
            // create DOM element that's used as a DOM icon
            var outerElement = document.createElement('div'),
                innerElement = document.createElement('div');

            outerElement.style.userSelect = 'none';
            outerElement.style.webkitUserSelect = 'none';
            outerElement.style.msUserSelect = 'none';
            outerElement.style.mozUserSelect = 'none';
            outerElement.style.cursor = 'default';

            innerElement.innerHTML = 'A';
            innerElement.style.color = 'white';

            innerElement.style.paddingTop = '2px';
            innerElement.style.paddingLeft = '4px';
            innerElement.style.width = '20px';
            innerElement.style.height = '20px';

            //add negative margin to inner element
            //to move the anchor to center of the div
            innerElement.style.marginTop = '-10px';
            innerElement.style.marginLeft = '-10px';
            innerElement.style.backgroundColor = 'red';
            outerElement.appendChild(innerElement);

            function changeOpacity(evt) {
                evt.target.style.opacity = 0.6;
            };

            function changeOpacityToOne(evt) {
                evt.target.style.opacity = 1;
            };

            //create dom icon and add/remove opacity listeners
            var domIcon = new H.map.DomIcon(outerElement, {
                // the function is called every time marker enters the viewport
                onAttach: function (clonedElement, domIcon, domMarker) {
                    clonedElement.addEventListener('mouseover', changeOpacity);
                    clonedElement.addEventListener('mouseout', changeOpacityToOne);
                },
                // the function is called every time marker leaves the viewport
                onDetach: function (clonedElement, domIcon, domMarker) {
                    clonedElement.removeEventListener('mouseover', changeOpacity);
                    clonedElement.removeEventListener('mouseout', changeOpacityToOne);
                }
            });

            var domMarker = new H.map.DomMarker({ lat: 14.560761, lng: 121.016533 }, {
                icon: domIcon
            });
            map.addObject(domMarker);
        }

        
        addDomMarker(map);
        

    </script>
</asp:Content>

