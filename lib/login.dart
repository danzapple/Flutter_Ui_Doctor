import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:project_flutter_pemula_dicoding/bottom_bar.dart';
import 'package:project_flutter_pemula_dicoding/widgets/input.dart';
import 'package:project_flutter_pemula_dicoding/widgets/inputpassword.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.5),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(height: 50),
            FadeInDown(
              duration: const Duration(milliseconds: 1500),
              child: Image.asset(
                'assets/login.png',
                height: height * 0.4,
                fit: BoxFit.cover,
              ),
            ),
            FadeInUp(
              duration: const Duration(milliseconds: 1000),
              delay: const Duration(milliseconds: 500),
              child: Container(
                  height: height / 1.2,
                  padding: const EdgeInsets.only(top: 50, left: 50, right: 50),
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        FadeInUp(
                          duration: const Duration(milliseconds: 1000),
                          delay: const Duration(milliseconds: 1000),
                          from: 50,
                          child: const Text(
                            'Sign in',
                            // textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                            textAlign: TextAlign.right,
                          ),
                        ),
                        const SizedBox(height: 15),
                        FadeInUp(
                            duration: const Duration(milliseconds: 1000),
                            delay: const Duration(milliseconds: 1000),
                            from: 60,
                            child: InputField(
                              border: Border.all(
                                color: Colors.grey.withOpacity(0.5),
                                width: 2,
                              ),
                              hintText: 'email and username',
                              // onChanged: () async {},
                              icon: Icons.email,
                              color: Colors.blue,
                            )),
                        const SizedBox(height: 15),
                        FadeInUp(
                            duration: const Duration(milliseconds: 1000),
                            delay: const Duration(milliseconds: 1000),
                            from: 60,
                            child: const InputPasswordField(

                                // onChanged: () async {},

                                )),
                        const SizedBox(height: 70),
                        FadeInUp(
                          duration: const Duration(milliseconds: 1000),
                          delay: const Duration(milliseconds: 1000),
                          from: 70,
                          child: Align(
                              alignment: Alignment.center,
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.of(context).pushAndRemoveUntil(
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const HomeBottomBar()),
                                      (Route<dynamic> route) => false);
                                },
                                child: SizedBox(
                                    height: 50,
                                    width: width / 1.1,
                                    child: const Align(
                                        alignment: Alignment.center,
                                        child: Text('Sign In',
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold)))),
                              )),
                        )
                      ])),
            ),
          ],
        ),
      ),
    );
  }
}
