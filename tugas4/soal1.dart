range(int startNum, int finishNum) {
  List<int> hasil = [];
  if (startNum <= finishNum) {
    for (int i = startNum; i <= finishNum; i++) {
      hasil.add(i);
    }
  } else {
    for (int i = startNum; i >= finishNum; i--) {
      hasil.add(i);
    }
  }
  return hasil;
}

void main() {
  print(range(1, 10)); //[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
  print(range(11, 18)); //[11, 12, 13, 14, 15, 16, 17, 18]
}
