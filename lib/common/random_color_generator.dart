import 'dart:math';
import 'dart:ui';

class RandomColorGenerator {
  final Random _random = Random();

  Color getColorFromARGB() {
    return Color.fromARGB(
      _random.nextInt(256),
      _random.nextInt(256),
      _random.nextInt(256),
      _random.nextInt(256),
    );
  }
}
