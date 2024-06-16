<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        //$this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        
        // OpenWeatherMap API key
        $apiKey = 'a623f428c473495385c160019240806';

        // City name and country code (e.g., "Magway")
        $city ='magway';//'auto:ip';
        $days = '6';

        // API endpoint URL
        $apiUrl = "https://api.weatherapi.com/v1/forecast.json?key=$apiKey&q=$city&days=$days";

        // Fetch data from the API
        $response = file_get_contents($apiUrl);
        //var_dump($response);
        // Check if the response is successful
        //if ($response) {
            // Convert JSON response to an associative array
        $weatherData = json_decode($response, true);

        //var_dump($weatherData);
        // echo"<br><br><br><br><br>";
        // var_dump($weatherData["location"]);

        // echo"<br><br><br><br><br>";
        // var_dump($weatherData["current"]);


        // echo"<br><br><br><br><br>";
        // var_dump($weatherData["forecast"]);
            // Check if data retrieval was successful
            // if ($weatherData /*&& isset($weatherData['main'], $weatherData['weather'])*/) {
            //     // Extract relevant weather information
            //     $temperature = $weatherData["current"]['temp_c'];
            // // $weatherDescription = $weatherData[29]['tz_id'];

            //     // Display the weather forecast
            //     echo "Temperature: " . round($temperature) . "°C<br>";
            // echo "Weather: " . ucfirst($weatherDescription);
            // } else {
            //     echo "Failed to retrieve weather data.";
            // }
        // } else {
        //     $weatherData = "";
        // }
        return view('home', [
            'weatherData' => $weatherData
            ]); 
    }
}
