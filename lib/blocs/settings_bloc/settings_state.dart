part of 'settings_bloc.dart';

enum TemperatureUnits { fahrenheit, celsuis }

class SettingsState extends Equatable {
  final TemperatureUnits temperatureUnits;
  
  const SettingsState({@required this.temperatureUnits})
    : assert(temperatureUnits != null);

  @override
  List<Object> get props => [temperatureUnits];
}