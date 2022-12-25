part of 'color_bloc.dart';

abstract class ColorEvent extends Equatable {
  const ColorEvent();

  @override
  List<Object> get props => [];
}

class ColorStart extends ColorEvent {}

class ColorStartChangeManually extends ColorEvent {}

class ColorChangedManually extends ColorEvent {}

class ColorChangedAutomatically extends ColorEvent {}