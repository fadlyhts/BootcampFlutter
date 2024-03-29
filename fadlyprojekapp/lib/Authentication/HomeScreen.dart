import 'package:fadlyprojekapp/Authentication/LoginScreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  Future<void> _signOut() async {
    await FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    FirebaseAuth auth = FirebaseAuth.instance;
    if (auth.currentUser != null) {
      print(auth.currentUser!.email);
    }

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 60),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(icon: Icon(Icons.notifications), onPressed: () {}),
                IconButton(icon: Icon(Icons.extension), onPressed: () {})
              ],
            ),
            SizedBox(height: 37),
            Text.rich(
              TextSpan(
                children:[
                  TextSpan(
                    text:"Welcome, \n", style : 
                    TextStyle(color : Colors.blue[300])),
                  TextSpan(
                    text: auth.currentUser!.email,
                    style: TextStyle(color: Colors.blue[900])
                  ),
                  // ... The rest of the text is not visible in the image.
                ],
              ),
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search, size: 10),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10)),
                hintText: "search"
              ),
            ),
            SizedBox(height: 10,),
            Text(
              "Recomended Place",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
            ),
            Container(
              child: ElevatedButton
              (onPressed: () {
                 _signOut().then((value) => Navigator.of(context)
                      .pushReplacement(MaterialPageRoute(
                        builder: (context) => LoginScreen())));  
                      },
                  child: Text('Logout'),
                  ))
          ],
        ),
      ),
    );
  }
}
final countries = ["Tokyo", "Berlin", "Roma", "Monas"];
