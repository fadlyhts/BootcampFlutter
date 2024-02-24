import 'dart:io';
import 'lingkaran.dart';

void main(List<String> args) {
  stdout.write('Masukkan nilai jari-jari lingkaran: ');
  double jariJari = double.parse(stdin.readLineSync()!);

  Lingkaran lingkaran = Lingkaran(jariJari);
  print('Jari-jari: ${lingkaran.jariJari}');
  print('Luas lingkaran: ${lingkaran.luas}');
}
