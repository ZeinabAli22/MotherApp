import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  //Controller
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  Future signIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: _emailController.text.trim(),
      password: _passwordController.text.trim(),
    );
  }

  void openChooseGender() {
    Navigator.of(context).pushNamed('choosegender');
  }

  void openSignupScreen() {
    Navigator.of(context).pushReplacementNamed('signuup');
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom),
            child: Form(
              child: SizedBox(
                width: double.maxFinite,
                child: Column(
                  children: [
                    const Image(
                      image: AssetImage("asset/images/SignIn.png"),
                      height: 250,
                      width: 411,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 4),
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: Text(
                        "Welcome Back!",
                        style: GoogleFonts.inter(
                          textStyle: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
//Email textfield
                    //CutomerFormTextField(),
                    Container(
                      height: 56,
                      width: 307,
                      decoration: BoxDecoration(
                        color: const Color(0xFFF2F2F2),
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Center(
                          child: TextField(
                            controller: _emailController,
                            keyboardType: TextInputType.emailAddress,
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: "Email Address",
                              prefixIcon: Icon(
                                Icons.email_outlined,
                                color: Colors.black26,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ), //end email textfield
                    const SizedBox(height: 20.0),
//Password Textfield
                    // CustomFormFieldPass(),
                    Container(
                      height: 56,
                      width: 307,
                      decoration: BoxDecoration(
                        color: const Color(0xFFF2F2F2),
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Center(
                          child: TextFormField(
                            controller: _passwordController,
                            keyboardType: TextInputType.visiblePassword,
                            obscureText: true,
                            onFieldSubmitted: (value) {
                              print(value);
                            },
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              // labelText: "Email Address",
                              hintText: "Password",
                              prefixIcon: Icon(
                                Icons.lock_outlined,
                                color: Colors.black26,
                              ),
                              suffixIcon: Icon(Icons.remove_red_eye_rounded),
                            ),
                          ),
                        ),
                      ),
                    ), // end text field password
                    const SizedBox(
                      height: 25.0,
                    ),
                    // SignIN Buttom
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 0, horizontal: 60),
                      child: Container(
                        height: 53,
                        width: 232,
                        decoration: BoxDecoration(
                          color: Colors.indigoAccent[100],
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: Center(
                          child: GestureDetector(
                            onTap: openChooseGender,
                            child: Text(
                              'Sign In',
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 22,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ), //end of sign in buttom

                    const SizedBox(
                      height: 20,
                    ),

                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Forgot your password?",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        )),
                    const SizedBox(
                      height: 10,
                    ),

                    ///-----
                    const SizedBox(
                      width: 400,
                      child: Row(
                        children: [
                          Expanded(
                            child: Divider(
                              thickness: 0.8,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            "  Or Sign in with  ",
                            style: TextStyle(fontWeight: FontWeight.w400),
                          ),
                          Expanded(
                            child: Divider(
                              thickness: 0.8,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 14,
                        ),
                        /////Google
                        Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            height: 55,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(6),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(.1),
                                  blurRadius: 10,
                                ),
                              ],
                            ),
                            child: SvgPicture.asset(
                              "asset/images/icons8-google.svg",
                              height: 30,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 14,
                        ),
                        /////Facebook
                        Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            height: 55,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(6),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(.1),
                                  blurRadius: 10,
                                ),
                              ],
                            ),
                            child: SvgPicture.asset(
                              "asset/images/icons8-facebook.svg",
                              height: 30,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 14,
                        ),

                        ///Twitter
                        Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            height: 55,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(6),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(.1),
                                  blurRadius: 10,
                                ),
                              ],
                            ),
                            child: SvgPicture.asset(
                              "asset/images/icons8-twitterx.svg",
                              height: 30,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 14,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 17,
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Dont have an account? ",
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        GestureDetector(
                          onTap: openSignupScreen,
                          child: Text(
                            " Sign up",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.blue[700],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
