import 'package:flutter/material.dart';
import '../services/auth_service.dart';
import '../services/weather_services.dart';
import 'login_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final cityController = TextEditingController();

  final WeatherService weatherService = WeatherService();
  final AuthService authService = AuthService();

  Map<String, dynamic>? weatherData;

  bool isLoading = false;

  void getWeather() async {
    setState(() {
      isLoading = true;
    });

    try {
      final data = await weatherService.getWeather(
        cityController.text.trim(),
      );

      setState(() {
        weatherData = data;
      });
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          backgroundColor: Colors.redAccent,
          content: Text('City not found'),
        ),
      );
    }

    setState(() {
      isLoading = false;
    });
  }

  void logout() async {
    await authService.logout();

    if (!mounted) return;

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (_) => const LoginPage(),
      ),
    );
  }

  IconData getWeatherIcon(String weather) {
    if (weather.toLowerCase().contains('sun')) {
      return Icons.wb_sunny_rounded;
    } else if (weather.toLowerCase().contains('cloud')) {
      return Icons.cloud_rounded;
    } else if (weather.toLowerCase().contains('rain')) {
      return Icons.thunderstorm_rounded;
    } else {
      return Icons.wb_cloudy_rounded;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F9FF),

      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,

        title: const Text(
          'Weather App ☀️',
          style: TextStyle(
            color: Color(0xFF1E293B),
            fontWeight: FontWeight.bold,
          ),
        ),

        actions: [
          IconButton(
            onPressed: logout,
            icon: const Icon(
              Icons.logout_rounded,
              color: Color(0xFF1E293B),
            ),
          )
        ],
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            /// HEADER
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(24),

              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    Color(0xFF4FACFE),
                    Color(0xFF00F2FE),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),

                borderRadius: BorderRadius.circular(28),

                boxShadow: [
                  BoxShadow(
                    color: Colors.blue.withOpacity(0.2),
                    blurRadius: 20,
                    offset: const Offset(0, 10),
                  ),
                ],
              ),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  const Text(
                    'Hello 👋',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 18,
                    ),
                  ),

                  const SizedBox(height: 8),

                  const Text(
                    'Check Today’s Weather',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 12),

                  const Text(
                    'Find weather updates from any city around the world 🌍',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 28),

            /// SEARCH BOX
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),

                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 15,
                    offset: const Offset(0, 6),
                  ),
                ],
              ),

              child: TextField(
                controller: cityController,

                decoration: InputDecoration(
                  hintText: 'Search city...',
                  hintStyle: const TextStyle(
                    color: Colors.grey,
                  ),

                  prefixIcon: const Icon(
                    Icons.location_city_rounded,
                    color: Color(0xFF4FACFE),
                  ),

                  suffixIcon: IconButton(
                    onPressed: getWeather,
                    icon: const Icon(
                      Icons.search_rounded,
                      color: Color(0xFF4FACFE),
                    ),
                  ),

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none,
                  ),

                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
            ),

            const SizedBox(height: 35),

            /// LOADING
            if (isLoading)
              const Center(
                child: CircularProgressIndicator(),
              ),

            /// WEATHER CARD
            if (weatherData != null)
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(28),

                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xFF89F7FE),
                      Color(0xFF66A6FF),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),

                  borderRadius: BorderRadius.circular(30),

                  boxShadow: [
                    BoxShadow(
                      color: Colors.blue.withOpacity(0.2),
                      blurRadius: 20,
                      offset: const Offset(0, 10),
                    ),
                  ],
                ),

                child: Column(
                  children: [

                    Icon(
                      getWeatherIcon(
                        weatherData!['WeatherText'],
                      ),
                      size: 100,
                      color: Colors.white,
                    ),

                    const SizedBox(height: 20),

                    Text(
                      weatherData!['WeatherText'],
                      style: const TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),

                    const SizedBox(height: 14),

                    Text(
                      '${weatherData!['Temperature']['Metric']['Value']} °C',
                      style: const TextStyle(
                        fontSize: 55,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),

                    const SizedBox(height: 10),

                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 18,
                        vertical: 10,
                      ),

                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(20),
                      ),

                      child: const Text(
                        'Real-time Weather Update',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}