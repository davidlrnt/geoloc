
module Geoloc
  module Helper
    def get_geoloc_button(route, id=nil, message = "<3 Geoloc")
      html = <<-HTML
      <button onclick="getLocation()">#{message}</button>

      <script>
      var x = document.getElementById("#{id}");

      function getLocation() {
          if (navigator.geolocation) {
              navigator.geolocation.getCurrentPosition(showPosition);
          } else {
              x.innerHTML = "Geolocation is not supported by this browser.";
          }
      }

      function showPosition(position) {

      $.post( "#{route}", { data: position  })
        .done(function( data ) {
          x.innerHTML = data.data;
        });
      }
      </script>
      HTML
      raw html
    end


    def get_geoloc_onload(route, id=nil)
      html = <<-HTML

      <script>
      var x = document.getElementById("#{id}");

      function getLocation() {
          if (navigator.geolocation) {
              navigator.geolocation.getCurrentPosition(showPosition);
          } else {
              x.innerHTML = "Geolocation is not supported by this browser.";
          }
      }

      function showPosition(position) {

      $.post( "#{route}", { data: position  })
        .done(function( data ) {
          x.innerHTML = data.data;
        });
      }
      window.onload = getLocation;

      </script>
      HTML
      raw html
    end

    def get_geoloc_form
      html = <<-HTML

      <script>
      var lat = document.getElementById("geoloc_latitude");
      var lng = document.getElementById("geoloc_longitude");

      function getLocation() {
          if (navigator.geolocation) {
              navigator.geolocation.getCurrentPosition(showPosition);
          } else {
              x.innerHTML = "Geolocation is not supported by this browser.";
          }
      }

      function showPosition(position) {
        lat.value = position.coords.latitude;
        lng.value = position.coords.longitude;

      }
      window.onload = getLocation;

      </script>
      HTML
      raw html
    end

  end

end
