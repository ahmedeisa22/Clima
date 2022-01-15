import 'package:clima/services/location.dart';
import 'package:clima/services/networking.dart';

const apiKey = 'b856e79f578c143b4d32a74872c8079d';
const apiName = 'http://api.openweathermap.org/data/2.5/weather';
class WeatherModel {

  Future<dynamic> getCityWeather(String cityName) async{
    var url = '$apiName?q=$cityName&appid=$apiKey&units=metric';
    NetWorkHelper netWorkHelper = NetWorkHelper(url);
    var cityData = await netWorkHelper.getData();
    return cityData;
  }
  Future<dynamic> getLocationWeather() async{
    Location location = new Location();
    await location.getCurrentlocation();
    NetWorkHelper networkhelper = NetWorkHelper(
        '$apiName?lat=${location.latitude}&lon=${location.longitude}&appid=$apiKey&units=metric');
    var weatherData = await networkhelper.getData();
    return weatherData;
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
      return 'Time for shorts and 👕';
    } else if (temp < 10) {
      return 'You\'ll need 🧣 and 🧤';
    } else {
      return 'Bring a 🧥 just in case';
    }
  }
}
