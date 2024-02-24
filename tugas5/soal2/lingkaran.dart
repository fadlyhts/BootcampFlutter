import 'dart:math';

class Lingkaran {
  late double _jariJari;

  Lingkaran(double jariJari) {
    _jariJari = jariJari.abs(); // agar nilai tetap positif
  }

  set jariJari(double jariJari) {
    _jariJari = jariJari.abs(); // agar nilai tetap positif
  }

  double get jariJari => _jariJari;

  double get luas => pi * _jariJari * _jariJari;
}
