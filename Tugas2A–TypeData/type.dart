import 'dart:io';
void main() {
  var word = 'dart';
  var second = 'is';
  var third = 'awesome';
  var fourth = 'and';
  var fifth = 'I';
  var sixth = 'love';
  var seventh = 'it!';
  
  // Menggabungkan variabel-variabel tersebut menjadi satu kalimat
  var kalimat = '$word $second $third $fourth $fifth $sixth $seventh \n';



// Mengurai Kalimat
   var sentence1 = "I am going to be Flutter Developer";

  var exampleFirstWord = sentence1.substring(0, 1); // Mengambil karakter pertama
  var exampleSecondWord = sentence1.substring(2, 4); // Mengambil karakter kedua dan ketiga
  var thirdWord = sentence1.split(' ')[2]; // Memisahkan kalimat berdasarkan spasi dan mengambil kata ketiga
  var fourthWord = sentence1.split(' ')[3]; // Mengambil kata keempat
  var fifthWord = sentence1.split(' ')[4]; // Mengambil kata kelima
  var sixthWord = sentence1.split(' ')[5]; // Mengambil kata keenam
  var seventhWord = sentence1.split(' ')[6]; // Mengambil kata ketujuh
  
  print(kalimat);
  print('First Word: ' + exampleFirstWord);
  print('Second Word: ' + exampleSecondWord);
  print('Third Word: ' + thirdWord);
  print('Fourth Word: ' + fourthWord);
  print('Fifth Word: ' + fifthWord);
  print('Sixth Word: ' + sixthWord);
  print('Seventh Word: ' + seventhWord );
  print('\n' );


  // Menampung Variabel
  stdout.write('Masukkan nama depan: ');
  String firstName = stdin.readLineSync()!;
  
  stdout.write('Masukkan nama belakang: ');
  String lastName = stdin.readLineSync()!;
  
  String fullName = '$firstName $lastName';
  
  print('Nama lengkap Anda adalah: $fullName');
  print('\n');

  
  int a = 5;
  int b = 10;

  // Operasi perkalian
  int hasilPerkalian = a * b;
  print('a * b = $a * $b = $hasilPerkalian');

  // Operasi penjumlahan
  int hasilPenjumlahan = a + b;
  print('a + b = $a + $b = $hasilPenjumlahan');

  // Operasi pengurangan
  int hasilPengurangan = a - b;
  print('a - b = $a - $b = $hasilPengurangan');

  // Operasi pembagian
  double hasilPembagian = a / b;
  print('a / b = $a / $b = $hasilPembagian');
}
