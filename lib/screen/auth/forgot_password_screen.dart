import 'package:e_commerce_app/widgets/size/size_box_hight.dart';
import 'package:e_commerce_app/widgets/text/button_text_style.dart';
import 'package:e_commerce_app/widgets/text/text_headline.dart';
import 'package:e_commerce_app/widgets/text/text_title_large.dart';
import 'package:e_commerce_app/widgets/textformfield/text_form_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();

  @override
  void initState() {
    emailController;
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    emailController.clear();
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
                    child: TextTitleLarge(title: 'Forgot password'),
                  ),
                  const SizeBoxHeight(
                    height: 60,
                  ),
                  const TextHeadline(
                    title:
                        'Please, enter your email address. You will receive a link to create a new password via email.',
                  ),
                  const SizeBoxHeight(
                    height: 10,
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
                  const SizeBoxHeight(
                    height: 10,
                  ),
                  const SizeBoxHeight(
                    height: 60,
                  ),
                  MaterialButton(
                    padding: const EdgeInsets.all(16),
                    color: Theme.of(context).primaryColor,
                    onPressed: () {},
                    child: const ButtonTextStyle(title: 'SEND'),
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