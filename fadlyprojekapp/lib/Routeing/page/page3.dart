import 'package:fadlyprojekapp/Routeing/routes/route_name.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Pagethree extends StatelessWidget {
  const Pagethree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Halaman 3"),
            ElevatedButton(
              onPressed: () {
                Get.toNamed(RouteName.page_2);
              },
              child: Text("kembali ke page 2 "),
            ),
          ],
        ),
      ),
    );
  }
}
