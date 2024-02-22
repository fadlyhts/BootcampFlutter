// No. 1
void teriak(){
  print('Halo Sanbers!');
}

// No. 2
void kalikan(int num1, int num2) {
  var hasil = num1 * num2;
  print('Hasil perkalian: $hasil');
}

// No. 3
void introduce(String name, int age, String address, String hobby) {
  print('Nama saya $name, umur saya $age tahun, alamat saya di $address, dan saya punya hobby yaitu $hobby!');
}

// No. 4
void faktorial(int n) {
  if (n <= 0) {
    print('Hasil faktorial: 1');
  } else {
    int hasil = 1;
    for (int i = 1; i <= n; i++) {
      hasil *= i;
    }
    print('Hasil faktorial: $hasil');
  }
}

void main(List<String> args) {
  
  // 1.
  teriak();
  print('\n');
  
  // 2.
  var num1 = 12;
  var num2 = 4;
  kalikan(num1, num2);
  print('\n');

  // 3. 
  
  final String name = "Achmad";
  final int age = 30;
  final String address = "Jln. Malioboro, Yogyakarta";
  final String hobby = "Gaming";
  introduce(name, age, address, hobby);
  print('\n');

  // 4.
  int angka = 6;
  faktorial(angka);

}