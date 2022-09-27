import 'package:e_commerce_app/routes/routes.dart';
import 'package:e_commerce_app/screen/auth/social_media_login_screen.dart';
import 'package:e_commerce_app/widgets/size/size_box_hight.dart';
import 'package:e_commerce_app/widgets/text/text_headline.dart';
import 'package:e_commerce_app/widgets/text/text_title_large.dart';
import 'package:e_commerce_app/widgets/textformfield/text_form_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../widgets/text/button_text_style.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void initState() {
    nameController;
    emailController;
    passwordController;
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    nameController.clear();
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
                  const TextTitleLarge(title: 'Sign Up'),
                  const SizeBoxHeight(
                    height: 60,
                  ),
                  TextFormFieldWidget(
                    controller: nameController,
                    title: 'Name',
                    hintText: 'Enter name',
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
                        title: 'Already have an account?',
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed(Routes.logInScreen);
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
                    children: const [
                      TextHeadline(
                        title: 'Or sign up with social account',
                      ),
                      SocialMediaLoginScreen(),
                    ],
                  ),
                  const SizeBoxHeight(
                    height: 20,
                  ),
                  MaterialButton(
                    padding: const EdgeInsets.all(16),
                    color: Theme.of(context).primaryColor,
                    onPressed: () {},
                    child: const ButtonTextStyle(title: 'SIGN UP'),
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