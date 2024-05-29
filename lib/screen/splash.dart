import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:game_store/screen/login.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    Future.delayed(const Duration(seconds: 3)).then((value) {
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(
            builder: (context) => const LoginPage(title: 'Login'),
          ),
          (route) => false);
    });

    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/splash.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: SafeArea(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 116,
                ),
                Image.asset(
                  'assets/Logo.png',
                  height: 274,
                ),
                const SizedBox(
                  height: 200,
                ),
                RichText(
                    text: TextSpan(
                  text: "Capstone",
                  style: GoogleFonts.belleza(
                      fontSize: 60,
                      color: const Color.fromARGB(252, 249, 245, 245),
                      letterSpacing: 3.5 / 100),
                )),
                RichText(
                    text: TextSpan(
                  text: "Gaming Store",
                  style: GoogleFonts.belleza(
                      fontSize: 20,
                      color: const Color.fromARGB(252, 249, 245, 245),
                      letterSpacing: 3.5 / 100),
                ))
              ],
            )),
          )
        ],
      ),
    );
  }
}
