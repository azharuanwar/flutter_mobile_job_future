import 'package:flutter/material.dart';
import 'package:flutter_provider/pages/signup_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:email_validator/email_validator.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool isEmailValid = true;
  TextEditingController emailController = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 80, left: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Sign In',
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                        color: Color(0xffB3B5C4)),
                  ),
                  SizedBox(height: 2),
                  Text(
                    'Build Your Career',
                    style: GoogleFonts.poppins(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff272C2F)),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: Container(
                        child: Image.asset(
                          'assets/6_work 1.png',
                          height: 240,
                          width: 261.49,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: Text(
                        'Email Address',
                        style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xffB3B5C4)),
                      ),
                    ),
                  ),
                  Container(
                    height: 55,
                    width: 350,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: TextFormField(
                        // validator email
                        controller: emailController,
                        onChanged: (value) {
                          print(value);
                          bool isValid = EmailValidator.validate(value);
                          print(isValid);
                          if (isValid) {
                            setState(() {
                              isEmailValid = true;
                            });
                          } else {
                            setState(() {
                              isEmailValid = false;
                            });
                          }
                        },

                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xffF1F0F5),
                          enabledBorder: new OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(100)),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: isEmailValid
                                    ? Color(0xff4141A4)
                                    : Color(0xffFD4F56)),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          hintText: '',
                        ),
                        style: TextStyle(
                            color: isEmailValid
                                ? Color(0xff4141A4)
                                : Color(0xffFD4F56)),
                      ),
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Text(
                        'Password',
                        style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xffB3B5C4)),
                      ),
                    ),
                  ),
                  Container(
                    height: 55,
                    width: 350,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Color(0xffF1F0F5),
                            border: new OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(100)),
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xffF1F0F5)),
                                borderRadius: BorderRadius.circular(100))),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: Container(
                        height: 45,
                        width: 350,
                        child: TextButton(
                            style: TextButton.styleFrom(
                                backgroundColor: Color(0xff4141A4),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(100))),
                            onPressed: () {},
                            child: Text(
                              'Sign In',
                              style: GoogleFonts.poppins(
                                  color: Color(0xffFFFFFF),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500),
                            ))),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Container(
                        height: 45,
                        width: 350,
                        child: TextButton(
                            style: TextButton.styleFrom(
                                backgroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                    side: BorderSide(color: Color(0xffB3B5C4)),
                                    borderRadius: BorderRadius.circular(100))),
                            onPressed: () {},
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SignUpPage()));
                              },
                              child: Text(
                                'Create New Account',
                                style: GoogleFonts.poppins(
                                    color: Color(0xffB3B5C4),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500),
                              ),
                            ))),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
