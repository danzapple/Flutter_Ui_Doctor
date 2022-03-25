import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:project_flutter_pemula_dicoding/login.dart';

class IntroDoctor extends StatefulWidget {
  const IntroDoctor({Key? key}) : super(key: key);

  @override
  _IntroDoctorState createState() => _IntroDoctorState();
}

class _IntroDoctorState extends State<IntroDoctor> {
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
                'assets/intro_doctor.png',
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
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0xffFFC3A6).withOpacity(0.5),
                        offset: const Offset(0, -5),
                        blurRadius: 20,
                      ),
                    ],
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        FadeInUp(
                          duration: const Duration(milliseconds: 1000),
                          delay: const Duration(milliseconds: 1000),
                          from: 50,
                          child: const Text(
                            'Consult the best \nDoctor online',
                            // textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const SizedBox(height: 15),
                        FadeInUp(
                          duration: const Duration(milliseconds: 1000),
                          delay: const Duration(milliseconds: 1000),
                          from: 60,
                          child: Text(
                            'Amet minim mollit non deserunt\nullamco est sit aliqua',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey.shade600,
                            ),
                          ),
                        ),
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
                                              const LoginPage()),
                                      (Route<dynamic> route) => false);
                                },
                                child: SizedBox(
                                    height: 50,
                                    width: width / 1.1,
                                    child: const Align(
                                        alignment: Alignment.center,
                                        child: Text('Get Started',
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
