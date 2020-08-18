import 'package:flutter/material.dart';
import 'package:flutter_weather/models/models.dart';
import 'package:flutter_svg/flutter_svg.dart';


class WeatherConditions extends StatelessWidget {
  final WeatherCondition condition;

  const WeatherConditions({Key key, this.condition})
   : assert(condition != null), super(key: key);

  @override
  Widget build(BuildContext context) => _mapConditionToImage(condition);

  Widget _mapConditionToImage(WeatherCondition condition) {
    
    Widget image;

    switch (condition) {
      case WeatherCondition.clear:
        image = SvgPicture.asset('assets/clear.svg', height: 105.0,);
        break;
      case WeatherCondition.ligthCloud:
        image = SvgPicture.asset('assets/lightcloud.svg', height: 105.0,);
        break;
      case WeatherCondition.hail:
        image = SvgPicture.asset('assets/hail.svg', height: 105.0,);
        break;
      case WeatherCondition.snow:
        image = SvgPicture.asset('assets/snow.svg', height: 105.0,);
        break;
      case WeatherCondition.sleet:
        image = SvgPicture.asset('assets/sleet.svg', height: 105.0,);
        break;
      case WeatherCondition.heavyCloud:
        image = SvgPicture.asset('assets/heavycloud.svg', height: 105.0,);
        break;
      case WeatherCondition.heavyRain:
        image = SvgPicture.asset('assets/heavyrain.svg', height: 105.0,);
        break;
      case WeatherCondition.lightRain:
        image = SvgPicture.asset('assets/lightrain.svg', height: 105.0,);
        break;
      case WeatherCondition.showers:
        image = SvgPicture.asset('assets/showers.svg', height: 105.0,);
        break;
      case WeatherCondition.thunderstorm:
        image = SvgPicture.asset('assets/thunderstorm.svg', height: 105.0,);
        break;
      case WeatherCondition.unknown:
        image = SvgPicture.asset('assets/clear.svg', height: 105.0,);
        break;
    }

    return image;

  }
}
