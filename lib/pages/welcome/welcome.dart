import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stressout/pages/login/login.dart';
import 'package:stressout/pages/login/widgets/button.dart';
import 'package:stressout/pages/sign_up/sign_up.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 20,
                ),
                SvgPicture.asset('assets/images/background-welcome-1.svg',
                    height: 300),
                const SizedBox(
                  height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 100),
                  child: Text(
                    'Welcome to',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(253, 238, 4, 90),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 80),
                  child: Text(
                    'STRESSOUT',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w900,
                      color: Color.fromARGB(253, 238, 4, 90),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Button(
                  onTap: () {
                    // Navigate to the new screen
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Login(),
                      ),
                    );
                  },
                  label: 'Login',
                ),
                const SizedBox(
                  height: 5,
                ),
                Button(
                  onTap: () {
                    // Navigate to the new screen
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignUp(),
                      ),
                    );
                  },
                  label: 'Sign Up',
                  heroTag: 'btn2',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
