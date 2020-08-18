import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_weather/blocs/settings_bloc/settings_bloc.dart';
import 'package:flutter_weather/models/models.dart' as model;
import 'package:flutter_weather/widgets/widgets.dart';

class CombinedWeatherTemperature extends StatelessWidget {
  final model.Weather weather;

  CombinedWeatherTemperature({Key key, @required this.weather})
      : assert(weather != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: WeatherConditions(condition: weather.condition),
            ),
            Padding(
                padding: const EdgeInsets.all(20.0),
                child: BlocBuilder<SettingsBloc, SettingsState>(
                  builder: (context, state) {
                    return Temperature(
                      temperature: weather.temp,
                      high: weather.maxTemp,
                      low: weather.minTemp,
                      units: state.temperatureUnits,
                    );
                  },
                )),
          ],
        ),
        Center(
          child: Text(
            weather.formattedCondition,
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.w300, color: Colors.white),
          ),
        )
      ],
    );
  }
}
