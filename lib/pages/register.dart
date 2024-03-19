// ignore_for_file: unused_field
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _name = TextEditingController();
  final _businessName = TextEditingController();
  final _phone = TextEditingController();
  final _email = TextEditingController();
  final _password = TextEditingController();

  String? _nameError;
  String? _businessNameError;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: CupertinoPageScaffold(
        resizeToAvoidBottomInset: false,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    width: 400,
                    child: Text(
                      'Lets Register Account',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: 230,
                    child: Text(
                      'Hello user, you have a greatful journey',
                      style: TextStyle(
                        color: Colors.grey[900],
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SafeArea(
                    child: Column(
                      children: [
                        CupertinoTextField(
                          controller: _name,
                          placeholder: 'Name',
                          placeholderStyle: const TextStyle(
                            color: CupertinoColors.systemGrey,
                          ),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 20,
                          ),
                          keyboardType: TextInputType.text,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: CupertinoColors.systemGrey,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        const SizedBox(height: 10),
                        CupertinoTextField(
                          controller: _businessName,
                          placeholder: 'Business Name',
                          placeholderStyle: const TextStyle(
                              color: CupertinoColors.systemGrey),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 20,
                          ),
                          keyboardType: TextInputType.text,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: CupertinoColors.systemGrey,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        const SizedBox(height: 10),
                        CupertinoTextField(
                          controller: _phone,
                          placeholder: 'Phone',
                          placeholderStyle: const TextStyle(
                              color: CupertinoColors.systemGrey),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 20,
                          ),
                          keyboardType: TextInputType.number,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: CupertinoColors.systemGrey,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        const SizedBox(height: 10),
                        CupertinoTextField(
                          controller: _email,
                          placeholder: 'Email',
                          placeholderStyle: const TextStyle(
                              color: CupertinoColors.systemGrey),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 20,
                          ),
                          keyboardType: TextInputType.emailAddress,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: CupertinoColors.systemGrey,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        const SizedBox(height: 10),
                        CupertinoTextField(
                          controller: _password,
                          placeholder: 'Password',
                          obscureText: true,
                          placeholderStyle: const TextStyle(
                              color: CupertinoColors.systemGrey),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 20,
                          ),
                          keyboardType: TextInputType.visiblePassword,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: CupertinoColors.systemGrey,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        const SizedBox(height: 40),
                        CupertinoButton(
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          color: const Color.fromARGB(255, 112, 78, 234),
                          child: const SizedBox(
                            width: 370,
                            child: Text(
                              'Sign Up',
                              style: TextStyle(fontWeight: FontWeight.w600),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          onPressed: () {
                            print(
                              "$_name.text, $_businessName.text, $_phone.text, $_email.text, $_password.text",
                            );
                          },
                        ),
                        const SizedBox(height: 40),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Already have an account ? ',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.grey[600],
                              ),
                            ),
                            Text(
                              'Login',
                              style: TextStyle(
                                color: Colors.blue[500],
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  // Funcs
}
