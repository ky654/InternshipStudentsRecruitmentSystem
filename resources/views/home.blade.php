@extends("layouts.app")

@section("content")
<head>
    <title>Auto Refresh with AJAX</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<!-- <script type="text/javascript">
        $(document).ready(function() {
            function fetchData() {
                $.ajax({
                    url: '/EssentialAgriculture/weatherforecast',
                    method: 'GET',
                    success: function(data) {
                         // Update the data-container with the new data
                         $('#data-container').html('');
                         console.log(data);
                         $('#data-container').html(data);
                        // Assuming data is an array of items
                        // data.forEach(item => {
                        //     $('#data-container').append('<p>' + item.name + '</p>'); // Adjust this line based on your data structure
                        // });
                        },
                        error: function(error) {
                            console.log('Error:', error);
                    }
                });
            }

            // Fetch data initially
            fetchData();

            // Set interval to fetch data every 5 seconds (5000 milliseconds)
            setInterval(fetchData, 1000);
        });
</script> -->
<div class="container data-container">
<h3 class="title text-center bordered">Weather Report for <?php echo $weatherData["location"]["region"].' ('.$weatherData["location"]["country"].')';?></h3>
    <div class="col-md-12" style="padding-left:0px;padding-right:0px;">
      <div class="single bordered" style="padding-bottom:25px;background:url('back.jpg') no-repeat ;border-top:0px;background-size: cover;">
        <div class="row">
          <div class="col-sm-9" style="font-size:20px;text-align:left;padding-left:70px;">
            <p class="aqi-value"><?php echo round($weatherData["current"]['temp_c']);?> °C</p>
            <p class="weather-icon">
              <img style="margin-left:-10px;" src="<?php echo $weatherData["current"]["condition"]['icon'];?>">
              <?php echo $weatherData["current"]["condition"]['text'];?>
            </p>
            <div class="weather-icon">
              <p><strong>Wind Speed : </strong><?php echo $weatherData["current"]['wind_mph'].'mi/h';?></p>
              <p><strong>Pressure : </strong><?php echo $weatherData["current"]['pressure_in'].'inHg';?></p>
              <p><strong>Visibility : </strong><?php echo $weatherData["current"]['vis_miles'].'mi';?></p>
            </div>
          </div>
  </div>
  <br><br>
  <div id="rowData">
  <!-- <script src='https://meet.jit.si/external_api.js'></script>
<div id="meet"></div>
<script>
    const domain = 'meet.jit.si';
    const options = {
        roomName: 'EssentialAgriculture',
        width: '100%',
        height: 600,
        parentNode: document.querySelector('#meet'),
        interfaceConfigOverwrite: {
            filmStripOnly: false,
            SHOW_JITSI_WATERMARK: false,
        },
    };
    const api = new JitsiMeetExternalAPI(domain, options);
</script>
<script>
    api.addEventListener('participantJoined', (event) => {
        console.log(`${event.displayName} joined the meeting`);
    });
    
    api.addEventListener('participantLeft', (event) => {
        console.log(`${event.displayName} left the meeting`);
    });
</script>
  </div> -->
</div>
@endsection