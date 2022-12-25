import 'dart:ui';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:random_background_color/common/random_color_generator.dart';

part 'color_event.dart';

part 'color_state.dart';

class ColorBloc extends Bloc<ColorEvent, ColorState> {
  ColorBloc() : super(ColorInitial()) {
    on<ColorStart>((event, emit) {
      emit(const ColorChanged(backgroundColor: Color(0xFF000000)));
    });

    on<ColorChangedByTap>((event, emit) {
      final generator = RandomColorGenerator();

      emit(ColorChanged(backgroundColor: generator.getColorFromARGB()));
    });
  }
}
