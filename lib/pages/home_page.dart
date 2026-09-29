import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Gengar color palette
  static const Color gengarPurple = Color(0xFFA35FD6);
  static const Color gengarRed = Color(0xFFFF0000);
  static const Color gengarBlack = Color(0xFF000000);

  // Pega a parte do email antes do @
  // Ex: thiago.vandil@agi.com.br -> thiago.vandil
  String get userName {
    final email = FirebaseAuth.instance.currentUser?.email;
    if (email == null || email.isEmpty) return 'user';
    return email.split('@').first;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Gengar image
                  Image.asset(
                    'assets/images/gengar.png',
                    width: 280,
                    height: 280,
                    fit: BoxFit.contain,
                    filterQuality: FilterQuality.none,
                  ),
                  const SizedBox(height: 20),
              
                  // Welcome,
                  Text(
                    'Welcome,',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.pressStart2p(
                      fontSize: 18,
                      color: gengarPurple,
                      shadows: const [
                        Shadow(
                          offset: Offset(3, 3),
                          color: gengarBlack,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 12),
              
                  // @user!
                  // FittedBox reduz a fonte automaticamente se o nome for grande
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      '@$userName!',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.pressStart2p(
                        fontSize: 18,
                        color: gengarRed,
                        shadows: const [
                          Shadow(
                            offset: Offset(3, 3),
                            color: gengarBlack,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 32),
              
                  // Sign out
                  TextButton(
                    onPressed: () => FirebaseAuth.instance.signOut(),
                    child: Text(
                      'Sign out',
                      style: GoogleFonts.pressStart2p(
                        fontSize: 10,
                        color: gengarBlack,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}