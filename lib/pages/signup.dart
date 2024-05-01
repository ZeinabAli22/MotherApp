import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Sign extends StatelessWidget {
  const Sign({super.key});

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
                child: Column(children: [
                  const Image(
                    image: AssetImage("asset/images/SignUp 1.png"),
                    height: 250,
                    width: 411,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(height: 5),
                  Container(
                    margin: const EdgeInsets.only(left: 4),
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(35)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(
                            "Create your Account",
                            style: GoogleFonts.inter(
                              textStyle: const TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ), //google
                          ),
                        ),
                        const SizedBox(height: 20),

                        // TextFormField(
                        //   keyboardType: TextInputType.emailAddress,
                        //   onFieldSubmitted: (value) {
                        //     print(value);
                        //   },
                        //   decoration: InputDecoration(
                        //       labelText: "Email Address",
                        //       prefixIcon: Icon(
                        //         Icons.email_rounded,
                        //         // color: Colors.purpleAccent,
                        //       ),
                        //       border: OutlineInputBorder(
                        //         borderSide: BorderSide(
                        //           color: Colors.purpleAccent,
                        //           style: BorderStyle.solid,
                        //         ),
                        //       )),
                        // ),
                        // SizedBox(height: 15),
                        // TextFormField(
                        //   keyboardType: TextInputType.visiblePassword,
                        //   obscureText: true,
                        //   onFieldSubmitted: (value) {
                        //     print(value);
                        //   },
                        //   decoration: InputDecoration(
                        //       labelText: "Password",
                        //       prefixIcon: Icon(
                        //         Icons.lock_outline_rounded,
                        //         // color: Colors.purpleAccent,
                        //       ),
                        //       suffixIcon: Icon(
                        //         Icons.remove_red_eye_rounded,
                        //       ),
                        //       border: OutlineInputBorder(
                        //         borderSide: BorderSide(
                        //           color: Colors.purpleAccent,
                        //           style: BorderStyle.solid,
                        //         ),
                        //       )),
                        // ),

                        // MaterialButton(onPressed: (){})
                        // Center(
                        //   child: ElevatedButton(
                        //     onPressed: () {},
                        //     child: Text(
                        //       "Sign In",
                        //       style: GoogleFonts.inter(
                        //         fontSize: 24,
                        //         fontWeight: FontWeight.w500,
                        //       ),
                        //     ),
                        //     style: ButtonStyle(
                        //       // alignment:
                        //       backgroundColor:
                        //           MaterialStateProperty.all(Colors.purple[300]),
                        //       foregroundColor:
                        //           MaterialStateProperty.all(Colors.white),
                        //       padding: MaterialStateProperty.all(
                        //           EdgeInsets.symmetric(
                        //               horizontal: 20, vertical: 5)),
                        //       shape: MaterialStateProperty.all(
                        //           RoundedRectangleBorder(
                        //               borderRadius: BorderRadius.circular(10))),
                        //     ),
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
