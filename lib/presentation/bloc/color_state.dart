part of 'color_bloc.dart';

abstract class ColorState extends Equatable {
  const ColorState();
}

class ColorInitial extends ColorState {
  @override
  List<Object> get props => [];
}

class ColorChanged extends ColorState {
  final Color backgroundColor;

  const ColorChanged({required this.backgroundColor});

  @override
  List<Object> get props => [backgroundColor];
}
