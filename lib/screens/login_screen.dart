import 'package:flutter/material.dart';

import 'package:line_icons/line_icons.dart';
import 'package:login_form/screens/home_screen.dart';
import '../screens/color.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passWordController = TextEditingController();
  bool isPass = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kScafoldColor,
      //  resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: kAppBarColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Login',
                style: TextStyle(fontSize: 38, color: kTextColor),
              ),
              const SizedBox(height: 10),
              const Text(
                'Sgin in to Learn More..',
                style: TextStyle(fontSize: 20, color: kTextColor),
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.only(
                  top: 50,
                  left: 30,
                  right: 30,
                  bottom: 10,
                ),
                decoration: const BoxDecoration(
                  color: kFormColor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(50),
                  ),
                ),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Email is Required';
                          } else {
                            return null;
                          }
                        },
                        controller: emailController,
                        decoration: const InputDecoration(
                          filled: true,
                          fillColor: Colors.white12,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            ),
                          ),
                          hintText: 'Enter your Email',
                          label: Text(
                            'Email',
                            style: TextStyle(
                                color: kAppBarColor,
                                fontWeight: FontWeight.bold),
                          ),
                          // prefixIcon: Icon(Icons.email),
                          suffixIcon: Icon(Icons.person),
                        ),
                        keyboardType: TextInputType.emailAddress,
                        // onSubmitted: (value) => {
                        // setState(() {
                        // emailController.text = value;
                        //}),
                        // },
                      ),
                      const SizedBox(height: 30),
                      TextFormField(
                        validator: (value) {
                          if (value!.length < 8) {
                            return 'The Password must be min 8 Char';
                          } else {
                            return null;
                          }
                        },
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white12,
                          border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            ),
                          ),

                          hintText: 'Enter your Password',
                          label: const Text(
                            'password',
                            style: TextStyle(
                                color: kAppBarColor,
                                fontWeight: FontWeight.bold),
                          ),
                          //  prefixIcon: Icon(Icons.remove_red_eye_sharp),
                          suffixIcon: GestureDetector(
                            child: const Icon(Icons.remove_red_eye_rounded),
                            onTap: () {
                              isPass = !isPass;
                            },
                          ),
                        ),
                        obscureText: true,
                        controller: passWordController,
                      ),
                      const SizedBox(height: 40),
                      Row(
                        children: [
                          Expanded(
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  padding: const EdgeInsets.all(20),
                                  backgroundColor: kScafoldColor,
                                  foregroundColor: kTextColor,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  )),
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  Navigator.pushAndRemoveUntil(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const HomeScreen()),
                                      (route) => false);
                                }
                              },
                              child: const Text('Login'),
                            ),
                          ),
                        ],
                      ),

                      //  const SizedBox(height: 40),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: const Text('Forget Password ?'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Center(
                child: Text(
                  'Or Login With..',
                  style: TextStyle(color: kTextColor),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.only(
                  top: 10,
                  left: 30,
                  right: 30,
                  bottom: 10,
                ),
                decoration: const BoxDecoration(
                  color: kFormColor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(50),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(
                          8) /*To distance the icon from the circle line*/,
                      decoration: BoxDecoration(
                        border: Border.all(width: 2), // to show border
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: const Icon(
                        LineIcons.googlePlusG,
                        color: Colors.red,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      /*To distance the icon from the circle line*/
                      decoration: BoxDecoration(
                        border: Border.all(width: 2), // to show border
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: const Icon(
                        LineIcons.facebookF,
                        color: Colors.blue,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(
                          8) /*To distance the icon from the circle line*/,
                      decoration: BoxDecoration(
                        border: Border.all(width: 2), // to show border
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: const Icon(
                        LineIcons.twitter,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'You don\'t have an account ?',
                    style: TextStyle(color: kTextColor),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Create new account',
                      style: TextStyle(color: kTextColor),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
