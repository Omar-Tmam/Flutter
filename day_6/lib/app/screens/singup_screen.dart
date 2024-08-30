import 'package:day_6/widgets/my_container.dart';
import 'package:day_6/widgets/my_sized_box.dart';
import 'package:day_6/widgets/my_text_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF141414),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: CircleAvatar(
                    backgroundColor: const Color(0xFF1F2022),
                    child: SvgPicture.asset(
                      'assets/icons/back.svg',
                      width: 24,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 32),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'SIGN UP',
                        style: TextStyle(
                          fontSize: 36,
                          color: Colors.white,
                          fontFamily: 'Teko',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      RichText(
                        text: const TextSpan(
                          text: 'Already have an account? ',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF808797),
                            fontFamily: 'Teko',
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              
                              text: 'Sign in',
                              style: TextStyle(
                                color: Color(0xffF8FE11),
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Teko',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                myTextForm(
                  keyboardType: TextInputType.emailAddress,
                  labelText: "Email",
                  obscureText: false,
                  color: Colors.white,
                ),
                mySizedBox(height: 24),
                myTextForm(
                  labelText: "Password",
                  obscureText: true,
                  color: Colors.white,
                  icon: true,
                ),
                mySizedBox(height: 24),
                myTextForm(labelText: "Name", color: Colors.white),
                mySizedBox(height: 24),
                Center(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFF8FE11),
                      fixedSize: const Size(311, 48),
                    ),
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(
                        color: Color(0xFF141414),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                mySizedBox(height: 24),
                const Center(
                  child: Text(
                    'Or sign up with',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF808797),
                    ),
                  ),
                ),
                mySizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    myContainer(
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(
                          'assets/icons/google.svg',
                          width: 24,
                        ),
                      ),
                    ),
                    mySizedBox(width: 16),
                    myContainer(
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(
                          'assets/icons/twitter.svg',
                          width: 24,
                        ),
                      ),
                    ),
                    mySizedBox(width: 16),
                    myContainer(
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(
                          'assets/icons/facebook.svg',
                          width: 24,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
