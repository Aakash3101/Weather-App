import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'settings_event.dart';
part 'settings_state.dart';

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  SettingsBloc() : super(SettingsState(temperatureUnits: TemperatureUnits.celsuis));

  @override
  Stream<SettingsState> mapEventToState(
    SettingsEvent event,
  ) async* {
    yield SettingsState(
      temperatureUnits: state.temperatureUnits == TemperatureUnits.celsuis ?
        TemperatureUnits.fahrenheit : TemperatureUnits.celsuis
    );
  }
}
