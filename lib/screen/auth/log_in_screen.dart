import 'package:e_commerce_app/screen/auth/social_media_login_screen.dart';
import 'package:e_commerce_app/widgets/size/size_box_hight.dart';
import 'package:e_commerce_app/widgets/text/button_text_style.dart';
import 'package:e_commerce_app/widgets/text/text_headline.dart';
import 'package:e_commerce_app/widgets/text/text_title_large.dart';
import 'package:e_commerce_app/widgets/textformfield/text_form_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../routes/routes.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void initState() {
    emailController;
    passwordController;
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    emailController.clear();
    passwordController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF9F9F9),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 30),
            padding: const EdgeInsets.all(10),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(
                      CupertinoIcons.arrow_left_square,
                      size: 30,
                    ),
                  ),
                  const SizeBoxHeight(
                    height: 30,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: TextTitleLarge(title: 'Login'),
                  ),
                  const SizeBoxHeight(
                    height: 60,
                  ),
                  TextFormFieldWidget(
                    suffixIcon: emailController.text.isNotEmpty
                        ? InkWell(
                            onTap: () {
                              setState(() {
                                emailController.text = "";
                              });
                            },
                            child: const Icon(Icons.clear),
                          )
                        : const SizedBox.shrink(),
                    controller: emailController,
                    title: 'Email',
                    hintText: 'Enter email',
                  ),
                  TextFormFieldWidget(
                    controller: passwordController,
                    title: 'Password',
                    hintText: 'Enter password',
                  ),
                  const SizeBoxHeight(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const TextHeadline(
                        title: 'Forgot your password?',
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.of(context)
                              .pushNamed(Routes.forgotPasswordScreen);
                        },
                        icon: Icon(
                          CupertinoIcons.arrow_right_circle_fill,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    ],
                  ),
                  const SizeBoxHeight(
                    height: 60,
                  ),
                  Column(
                    children: [
                      RichText(
                        text: TextSpan(
                          text: "Don't have an Account  ",
                          style: Theme.of(context).textTheme.headlineMedium,
                          children: <TextSpan>[
                            TextSpan(
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1
                                  ?.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                  ),
                              text: 'Sign up',
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.of(context)
                                      .pushNamed(Routes.signUpScreen);
                                },
                            )
                          ],
                        ),
                      ),
                      const SizeBoxHeight(
                        height: 10,
                      ),
                      Row(
                        children: const [
                          Expanded(
                            child: Divider(
                              endIndent: 10,
                              indent: 10,
                              thickness: 1,
                            ),
                          ),
                          TextHeadline(
                            title: "OR",
                          ),
                          Expanded(
                            child: Divider(
                              thickness: 1,
                              endIndent: 10,
                              indent: 10,
                            ),
                          ),
                        ],
                      ),
                      const SizeBoxHeight(
                        height: 10,
                      ),
                      const TextHeadline(
                        title: 'Or login with social account',
                      ),
                      const SocialMediaLoginScreen(),
                    ],
                  ),
                  const SizeBoxHeight(
                    height: 20,
                  ),
                  MaterialButton(
                    padding: const EdgeInsets.all(16),
                    color: Theme.of(context).primaryColor,
                    onPressed: () {
                      Navigator.of(context).pushNamed(Routes.tabScreen);
                    },
                    child: const ButtonTextStyle(title: 'LOGIN'),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}