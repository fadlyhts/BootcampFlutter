class Segitiga {
  double setengah;
  double alas;
  double tinggi;

  Segitiga(this.setengah, this.alas, this.tinggi);
  double hitungLuas() {
    return setengah * alas * tinggi;
  }
}

void main(List<String> args) {
  Segitiga segitiga = Segitiga(0.5, 20, 30);
  double luas = segitiga.hitungLuas();
  print('Luas segitiga: $luas');
}
