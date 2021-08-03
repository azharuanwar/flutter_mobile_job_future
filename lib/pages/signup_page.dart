import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_provider/pages/home_page.dart';
import 'package:flutter_provider/pages/signin_page.dart';
import 'package:flutter_provider/theme.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool isEmailValid = true;
  TextEditingController emailController = TextEditingController(text: '');

  bool isUploaded = false;

  @override
  Widget build(BuildContext context) {
    Widget uploadedImages() {
      return Center(
        child: InkWell(
          onTap: () {
            setState(() {
              isUploaded = !isUploaded;
            });
          },
          child: Column(
            children: [
              Image.asset(
                'assets/icon_upload.png',
                width: 120,
                height: 120,
              )
            ],
          ),
        ),
      );
    }

    Widget showedImages() {
      return Center(
        child: InkWell(
          onTap: () {
            setState(() {
              isUploaded = !isUploaded;
            });
          },
          child: Column(
            children: [
              Image.asset(
                'assets/user_pic.png',
                width: 120,
                height: 120,
              )
            ],
          ),
        ),
      );
    }

    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 80, left: 24, right: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Sign Up',
                style: GoogleFonts.poppins(
                  color: Color(0xffB3B5C4),
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                'Build New Journey',
                style: GoogleFonts.poppins(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff272C2F)),
              ),
              SizedBox(
                height: 40,
              ),
              isUploaded ? showedImages() : uploadedImages(),
              SizedBox(
                height: 50,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Full Name',
                    style: textField,
                  ),
                  SizedBox(height: 8),
                  TextFormField(
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xffF1F0F5),
                        enabledBorder: new OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(100),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(100))),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Email Address',
                    style: textField,
                  ),
                  SizedBox(height: 8),
                  TextFormField(
                    //validator email
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
                        borderRadius: BorderRadius.circular(100),
                      ),
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
                ],
              ),
              SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Password',
                    style: textField,
                  ),
                  SizedBox(height: 8),
                  TextFormField(
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xffF1F0F5),
                        enabledBorder: new OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(100),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(100))),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Your Goals',
                    style: textField,
                  ),
                  SizedBox(height: 8),
                  TextFormField(
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xffF1F0F5),
                        enabledBorder: new OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(100),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(100))),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Column(
                children: [
                  Center(
                    child: Container(
                      height: 45,
                      width: 312,
                      child: TextButton(
                        style: TextButton.styleFrom(
                            backgroundColor: Color(0xff4141A4),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100))),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => HomePage()),
                          );
                        },
                        child: Text('Signup',
                            style:
                                GoogleFonts.poppins(color: Color(0xffFFFFFF))),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Column(
                children: [
                  Center(
                    child: Container(
                      height: 45,
                      width: 312,
                      child: TextButton(
                        style: TextButton.styleFrom(
                            backgroundColor: Color(0xffFFFFF),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100))),
                        onPressed: () {},
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                (context),
                                MaterialPageRoute(
                                    builder: (context) => SignInPage()));
                          },
                          child: Text('Back to Sign In',
                              style: GoogleFonts.poppins(
                                  color: Color(0xffB3B5C4))),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
