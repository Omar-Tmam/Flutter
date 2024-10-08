import 'package:day_6/app/widgets/auth_fields.dart';
import 'package:day_6/cubit/password_cubit.dart';
import 'package:day_6/cubit/password_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_svg/svg.dart';

import '../widgets/my_button.dart';
import '../widgets/my_container.dart';
import '../widgets/my_sized_box.dart';
import '../widgets/my_text_field.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({super.key});
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PasswordCubit, PasswordState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: const Color(0xFF141414),
          body: SafeArea(
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
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 32),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'SIGN UP',
                          style: TextStyle(
                            fontSize: 36,
                            color: Colors.white,
                            fontFamily: 'Teko',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              'Already have an account? ',
                              style: TextStyle(
                                color: Color(0xFF808696),
                                fontSize: 14,
                                letterSpacing: -0.5,
                              ),
                            ),
                            Text(
                              'Sign in',
                              style: TextStyle(
                                color: Color(0xFFF8FE11),
                                fontSize: 14,
                                letterSpacing: -0.5,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  AuthFields(
                    formKey: formKey,
                  ),
                  mySizedBox(height: 24),
                  MyTextField(
                    label: 'Name',
                    keyboardType: TextInputType.text,
                    obscureText: false,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Name cannot be empty';
                      }
                      return null;
                    },
                  ),
                  mySizedBox(height: 24),
                  Center(
                    child: myButton(
                        context: context,
                        text: 'Sign Up',
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            print('Sign Up');
                          }
                        }),
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
        );
      },
    );
  }
}
