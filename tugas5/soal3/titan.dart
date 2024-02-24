class Titan {
  late double _powerPoint;

  double get powerPoint => _powerPoint;
  set powerPoint(double value) {
    _powerPoint = value;
  }

  Titan(double powerPoint) {
    _powerPoint = powerPoint < 5 ? 5 : powerPoint;
  }
}
