rangeWithStep(int startNum, int finishNum, int step) {
  List<int> hasil = [];
  if (startNum <= finishNum) {
    for (int i = startNum; i <= finishNum; i += step) {
      hasil.add(i);
    }
  } else {
    for (int i = startNum; i >= finishNum; i -= step) {
      hasil.add(i);
    }
  }
  return hasil;
}

void main() {
  print(rangeWithStep(1, 10, 2));
  print(rangeWithStep(11, 23, 3));
  print(rangeWithStep(5, 2, 1));
}
