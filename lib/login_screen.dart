// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:login_signup/signup_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Color(0xFFF5B247aA), Color(0xFFF1bcedf)])),
              alignment: AlignmentDirectional.topStart,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                  top: 10,
                ),
                child: Icon(
                  Icons.menu,
                  size: 35,
                ),
              ),
              width: double.infinity,
            ),
          ),
          Expanded(
            flex: 7,
            child: Container(
              color: Colors.white,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: SingleChildScrollView(
                  child: Column(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 50),
                        child: Text(
                          'Login',
                          style: TextStyle(
                              fontSize: 40,
                              color: Colors.blue,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Card(
                        shadowColor: Colors.black,
                        elevation: 20,
                        child: TextFormField(
                          decoration: InputDecoration(
                              prefix: Icon(Icons.email),
                              labelText: 'Email Address ',
                              border: OutlineInputBorder()),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Card(
                        shadowColor: Colors.black,
                        elevation: 20,
                        child: TextFormField(
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: true,
                          decoration: InputDecoration(
                              suffix: Icon(Icons.remove_red_eye),
                              prefix: Icon(Icons.lock),
                              labelText: 'password',
                              border: OutlineInputBorder()),
                        ),
                      ),
                      // Card(
                      //   shadowColor: Colors.black,
                      //   elevation: 20,
                      //   child: TextFormField(
                      //     keyboardType: TextInputType.visiblePassword,
                      //     obscureText: true,
                      //     decoration: InputDecoration(
                      //         labelText: 'password',
                      //         prefixIcon: Icon(Icons.lock),
                      //         suffixIcon: Icon(Icons.remove_red_eye),
                      //         border: OutlineInputBorder()),
                      //   ),
                      // ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: TextButton(
                              onPressed: () {},
                              child: Text('forget password ?'),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              height: 40,
                              width: 30,
                              color: Colors.blue,
                              child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  'login',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 20),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              alignment: AlignmentDirectional.center,
              width: double.infinity,
              child: TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignUpScreen()));
                },
                child: Text(
                  'Sign Up',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              color: Colors.blue,
            ),
          )
        ],
      ),
    ));
  }
}
