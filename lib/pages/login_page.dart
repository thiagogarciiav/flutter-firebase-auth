import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class LoginPage extends StatefulWidget {
    const LoginPage({Key? key}) : super(key: key);

    @override
    State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            backgroundColor: Colors.grey[300],
            body: SafeArea(
              child: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                        Icon(
                            Icons.android_rounded,
                            size: 100,
                        ),
                        SizedBox(height: 60),

                        // Hello User!
                        Text('Hello, User!',
                            style: GoogleFonts.bebasNeue(
                                fontSize: 52
                            ),
                        ),
                        SizedBox(height: 5),
                        Text('Welcome!',
                            style: TextStyle(
                                fontSize: 20,
                            ),
                        ),
                        SizedBox(height: 20),

                        // email textfield
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25.0),
                          child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  border: Border.all(color: Colors.white),
                                  borderRadius: BorderRadius.circular(12),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 20.0),
                                child: TextField(
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: 'Email'
                                    ),
                                ),
                              ),
                          ),
                        ),
                        SizedBox(height: 10),

                        // password textfield
                        Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 25.0),
                            child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.grey[200],
                                    border: Border.all(color: Colors.white),
                                    borderRadius: BorderRadius.circular(12),
                                ),
                                child: Padding(
                                    padding: const EdgeInsets.only(left: 20.0),
                                    child: TextField(
                                        obscureText: true,
                                        decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintText: 'Password'
                                        ),
                                    ),
                                ),
                            ),
                        ),
                        SizedBox(height: 15),

                        // sign in button
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25.0),
                          child: Container(
                              padding: EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                  gradient: const LinearGradient(
                                      colors: [
                                        Color(0xFF6A3DE8),
                                        Color(0xFFA855F7),
                                      ],
                                      begin: Alignment.centerLeft,
                                      end: Alignment.centerRight,
                                  ),
                                  borderRadius: BorderRadius.circular(12)
                              ),
                              child: Center(
                                 child: Text(
                                     'Sign In',
                                     style: TextStyle(
                                         color: Colors.white,
                                         fontSize: 18,
                                         fontWeight: FontWeight.w600,
                                     ),
                                 ),
                              ),
                          ),
                        ),
                        SizedBox(height: 25),

                        // not a member? register now
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                                Text(
                                    'Not a member?',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                    ),
                                ),
                                Text(
                                    ' Register now',
                                    style: TextStyle(
                                        color: Colors.blue,
                                        fontWeight: FontWeight.bold,
                                    ),
                                ),
                            ],
                        ),
                    ],
                ),
              ),
            )
        );
    }
}