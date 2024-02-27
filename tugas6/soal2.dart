import 'dart:async';

void main(List<String> args) {
  printLife();
}

Future<void> printLife() {
  return Future.delayed(Duration(seconds: 1), () => print('life'))
      .then((_) => Future.delayed(Duration(seconds: 1), () => print('is')))
      .then((_) => Future.delayed(Duration(seconds: 1), () => print('never flat')));
}
