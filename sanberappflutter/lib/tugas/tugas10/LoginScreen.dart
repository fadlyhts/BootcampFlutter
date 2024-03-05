import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:sanberappflutter/tugas/tugas10/HomeScreen.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Login'),
          centerTitle: true,
          titleTextStyle: TextStyle(
          color: Colors.blue,
          fontWeight: FontWeight.w500,
          fontSize:30,

          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/img/kucing.jpg'), // Ganti dengan gambar logo Anda
              const SizedBox(
                height: 20,
              ),
              Container(
	            padding :EdgeInsets.all(10),
	                child: TextField(
	                decoration: InputDecoration(
		              border: OutlineInputBorder(),
	                labelText: "Username"
                ),
                )
                 ),
              Container(
	            padding :EdgeInsets.all(10),
	                child: TextField(
                    obscureText: true,
	                decoration: InputDecoration(
		              border: OutlineInputBorder(),
	                labelText: "Password"
                ),
                )
                 ),
              const SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    // Implement logic for forgot password
                  },
                  child: Text('Forgot Password'),
                ),
              ),
              SizedBox(
              width: 200.0,
              height: 50.0,
              child: ElevatedButton(
                onPressed: () {
                  Route route = MaterialPageRoute(builder: (context) => HomeScreen());
                  Navigator.push(context, route);
                  // Implement login logic
                },
                child: Text(
                  'Login',
                  ),
                
              )
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Does not have an account?'),
                  TextButton(
                    onPressed: () {
                      // Implement sign-up navigation
                    },
                    child: Text('Sign Up'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
