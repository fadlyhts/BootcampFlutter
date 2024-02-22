import 'dart:io';
void main() {
  // 1. While
  print('LOOPING PERTAMA');
  var i = 1;
  while (i <= 20) {
    if (i % 2 == 0) {
      print('$i - I love coding');
    }
    i++;
  }

  print('LOOPING KEDUA');
  var a = 20;
  while (a >= 2) {
    if (a % 2 == 0) {
      print('$a - I will become a mobile developer');
    }
    a -= 2;
  }
    print('\n' );

  // 2. For
  for (var i = 1; i <= 20; i++) {
    if (i % 2 == 0) {
      print('$i - Berkualitas');
    } else if (i % 3 == 0 && i % 2 != 0) {
      print('$i - I Love Coding');
    } else {
      print('$i - Santai');
    }
  }
    print('\n' );

  // No. 3 
  var panjang = 8;
  var lebar = 4;

  // Looping untuk mencetak baris
  for (int i = 0; i < lebar; i++) {
    // Looping untuk mencetak kolom
    for (int j = 0; j < panjang; j++) {
      // Mencetak tanda pagar
      // Cetak "#" tanpa spasi
      stdout.write('#');
    }
    // Mencetak baris baru setelah mencetak satu baris
    print('');
  }
    print('\n' );

  // No. 4
  var tinggi = 7;

  for (int i = 1; i <= tinggi; i++) {
    for (int j = 1; j <= i; j++) {
      stdout.write('#');
    }
    print('');
  }
}

