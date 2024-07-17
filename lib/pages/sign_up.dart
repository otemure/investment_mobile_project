import 'package:fintech_project/pages/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fintech_project/pages/create_account.dart';
import 'package:fintech_project/widgets/buttons.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Center(
              child: Padding(
            padding: const EdgeInsets.only(top: 200.0),
            child: Image.asset('images/signup.png'),
          )),
          Center(
            child: Text(
              'Stay on top of your\n finance with us.',
              style: GoogleFonts.abyssinicaSil(
                textStyle: const TextStyle(
                    fontSize: 30.0, fontWeight: FontWeight.w900),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 13.0, top: 25.0),
            child: Center(
                child: Text(
              textAlign: TextAlign.center,
              'We are your new financial Advisors\nto recommend the best investments for\n you.',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18,
              ),
            )),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 60.0),
            child: Userbuttons(
              text: 'Create account',
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 8.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Home()),
                );
              },
              child: Text(
                'Login',
                style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.green,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Createaccount()),
                );
              },
              child: const Text(
                'Don\'t have an account?',
                style: TextStyle(fontSize: 15.0, color: Colors.green),
              ),
            ),
          )
        ],
      ),
    ));
  }
}
