import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_weather/blocs/blocs.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String unit;
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: ListView(
        children: <Widget>[
          BlocBuilder<SettingsBloc, SettingsState>(
            builder: (context, state) {
              if (state.temperatureUnits == TemperatureUnits.celsuis) {
                unit = 'Celsuis';
              } else {
                unit = 'Fahrenheit';
              }
              return ListTile(
                title: Text(unit),
                isThreeLine: true,
                subtitle:
                    Text('Use metric measurements for temperatures units.'),
                trailing: Switch(
                    value: state.temperatureUnits == TemperatureUnits.celsuis,
                    onChanged: (_) {
                      BlocProvider.of<SettingsBloc>(context)
                          .add(TemperatureUnitsToggled());
                    }),
              );
            },
          )
        ],
      ),
    );
  }
}
