import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'theme_state.dart';

class ThemeCubit extends HydratedCubit<ThemeModeState> {
  ThemeCubit() : super(const ThemeModeState());

  @override
  String get storagePrefix => kIsWeb ? 'ThemeCubit' : super.storagePrefix;

  void getTheme(ThemeModeState state) {
    emit(state);
  }

  bool isDark() => state.themeMode == ThemeMode.dark;

  @override
  ThemeModeState? fromJson(Map<String, dynamic> json) {
    switch (json['themeMode']) {
      case 'ThemeMode.dark':
        return const ThemeModeState(themeMode: ThemeMode.dark);
      case 'ThemeMode.light':
        return const ThemeModeState(themeMode: ThemeMode.light);
      case 'ThemeMode.system':
      default:
        return const ThemeModeState(themeMode: ThemeMode.system);
    }
  }

  @override
  Map<String, String>? toJson(ThemeModeState state) {
    return <String, String>{'themeMode': state.themeMode.toString()};
  }
}
