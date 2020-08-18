import 'package:flutter/material.dart';
import 'package:flutter_weather/blocs/blocs.dart';

class Temperature extends StatelessWidget {
  final double temperature;
  final double high;
  final double low;
  final TemperatureUnits units;

  const Temperature({
    Key key, 
    this.temperature, 
    this.high, 
    this.low,
    this.units
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(right: 20.0),
          child: Text(
            '${_formattedTemperature(temperature)}°',
            style: TextStyle(
              fontSize: 48,
              fontWeight: FontWeight.w600,
              color: Colors.white
            ),
          ),
        ),

        Column(
          children: <Widget>[
            Text(
              ' Max : ${_formattedTemperature(high)}°',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: Colors.white
              ),
            ),
            Text(
              'Min : ${_formattedTemperature(low)}°',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: Colors.white
              ),
            ),
          ],
        )
      ],
    );
  }

  int _formattedTemperature(double t) => 
    units == TemperatureUnits.fahrenheit ? _toFahrenheit(t) : t.round();
    
  int _toFahrenheit(double celsuis) => ((celsuis * 9 / 5) +  32).round();
}