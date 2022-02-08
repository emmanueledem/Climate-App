import 'package:climate_app/services/location.dart';
import 'package:climate_app/services/networking.dart';
import 'package:climate_app/utilities/constants.dart';

class WeatherModel {
  Future<dynamic> getCityWeather(String cityName) async {
    var url = '$WeatherMapUrl?q=$cityName&appid=$Apikey&units=metric';
    NetworkHeler networkhelper = NetworkHeler(url);

    var WeatherData = await networkhelper.getData();
    return WeatherData;
  }

  Future<dynamic> getLoactionWeather() async {
    geoLocation locationClass = geoLocation();
    await locationClass.locate();
    NetworkHeler networkHeler = NetworkHeler(
        '$WeatherMapUrl?lat=${locationClass.Latitude}&lon=${locationClass.Longitude}&appid=$Apikey&units=metric');
    var WeatherData = await networkHeler.getData();

    return WeatherData;
  }

  String getWeatherIcon(int condition) {
    if (condition < 300) {
      return '🌩';
    } else if (condition < 400) {
      return '🌧';
    } else if (condition < 600) {
      return '☔️';
    } else if (condition < 700) {
      return '☃️';
    } else if (condition < 800) {
      return '🌫';
    } else if (condition == 800) {
      return '☀️';
    } else if (condition <= 804) {
      return '☁️';
    } else {
      return '🤷‍';
    }
  }

  String getMessage(int temp) {
    if (temp > 25) {
      return 'It\'s 🍦 time';
    } else if (temp > 20) {
      return 'Time for short and 👕';
    } else if (temp < 10) {
      return 'You\'ll need 🧣 and 🧤';
    } else {
      return 'Bring a 🧥 just in case';
    }
  }
}
