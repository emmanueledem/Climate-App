import 'package:climate_app/services/weather.dart';
import 'package:flutter/material.dart';

const kTempTextStyle = TextStyle(
  fontFamily: 'Spartan MB',
  fontSize: 100.0,
);

const kMessageTextStyle = TextStyle(
  fontFamily: 'Spartan MB',
  fontSize: 60.0,
);

const kButtonTextStyle = TextStyle(
  fontSize: 30.0,
  fontFamily: 'Spartan MB',
);

const kConditionTextStyle = TextStyle(
  fontSize: 100.0,
);

const Apikey = 'a294cbf1aa05a417802753e0df6f12e4';

const WeatherMapUrl = 'https://api.openweathermap.org/data/2.5/weather';

var inputStyle = InputDecoration(
  filled: true,
  fillColor: Colors.white,
  icon: const Icon(Icons.location_city, color: Colors.white),
  hintText: 'Enter City Name',
  hintStyle: const TextStyle(
    color: Colors.grey,
  ),
  border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none),
);
