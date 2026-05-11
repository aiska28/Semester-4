import 'dart:convert';
import 'package:http/http.dart' as http;

class WeatherService {
  final String apiKey =
      'YOUR_API_KEY'; /// saya hapus karena tidak boleh di push ke github

  Future<Map<String, dynamic>> getWeather(String city) async {

    // SEARCH CITY
    final locationUrl =
        'https://dataservice.accuweather.com/locations/v1/cities/search'
        '?apikey=$apiKey&q=$city';

    final locationResponse =
        await http.get(Uri.parse(locationUrl));

    // DEBUG
    print(locationResponse.body);

    final locationData =
        jsonDecode(locationResponse.body);

    if (locationData == null || locationData.isEmpty) {
      throw Exception('City not found');
    }

    final locationKey = locationData[0]['Key'];

    // GET WEATHER
    final weatherUrl =
        'https://dataservice.accuweather.com/currentconditions/v1/$locationKey'
        '?apikey=$apiKey';

    final weatherResponse =
        await http.get(Uri.parse(weatherUrl));

    // DEBUG
    print(weatherResponse.body);

    final weatherData =
        jsonDecode(weatherResponse.body);

    return weatherData[0];
  }
}