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

void main() {
  int angka = 6;
  faktorial(angka);
}