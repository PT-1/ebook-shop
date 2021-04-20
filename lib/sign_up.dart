
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:internship_ui/signIn.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: 800,
          child: Column(
            children: [
              Stack(children: [
                Container(
                  height: 220,
                  decoration: BoxDecoration(color: Colors.brown),
                ),
                Positioned(
                  child: Card(
                      elevation: 20,
                      child: Image(
                        image: AssetImage("assets/images/book_image.png"),
                      )),
                  top: 80,
                  left: MediaQuery.of(context).size.width / 2 - 40,
                ),
                Positioned(
                  top: 190,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                )
              ]),
              // Expanded(
              //   child: Container(
              //     color: Colors.white,
              //     child: SizedBox.expand(
              //       child: Padding(
              //         padding: EdgeInsets.all(15),
              //         child: Form(
              //             child: Column(
              //               crossAxisAlignment: CrossAxisAlignment.start,
              //               children: [
              //                 // Email field
              //                 Text(
              //                   "Email Address",
              //                   style: TextStyle(
              //                       decoration: TextDecoration.none,
              //                       fontSize: 10,
              //                       fontWeight: FontWeight.bold,
              //                       color: Colors.black45),
              //                 ),
              //                 SizedBox(
              //                   height: 5,
              //                 ),
              //                 Container(
              //                   decoration: BoxDecoration(
              //                       color: Colors.grey[200],
              //                       borderRadius: BorderRadius.circular(10)),
              //                   child: Row(
              //                     children: [
              //                       // email(),
              //                       Container(
              //                         child: Icon(Icons.chevron_right_sharp),
              //                         color: Colors.white,
              //                       )
              //                     ],
              //                   ),
              //                 ),
              //
              //                 SizedBox(
              //                   height: 20,
              //                 ),
              //                 //  Password field
              //                 Text(
              //                   "Password",
              //                   style: TextStyle(
              //                       decoration: TextDecoration.none,
              //                       fontSize: 10,
              //                       fontWeight: FontWeight.bold,
              //                       color: Colors.black45),
              //                 ),
              //                 SizedBox(
              //                   height: 5,
              //                 ),
              //                 Container(
              //                   decoration: BoxDecoration(
              //                       color: Colors.grey[200],
              //                       borderRadius: BorderRadius.circular(10)),
              //                   child: Row(
              //                     children: [
              //                       // password(),
              //                       Container(
              //                         child: Icon(Icons.remove_red_eye),
              //                       )
              //                     ],
              //                   ),
              //                 ),
              //
              //                 SizedBox(height: 10),
              //                 Row(children: [
              //                   Radio(
              //                     value: 1,
              //                     toggleable: true,
              //                   ),
              //                   Text(
              //                     "Remember me",
              //                     style: TextStyle(
              //                         decoration: TextDecoration.none,
              //                         fontSize: 10,
              //                         fontWeight: FontWeight.bold,
              //                         color: Colors.black45),
              //                   ),
              //                   Expanded(
              //                     child: Row(
              //                       mainAxisAlignment: MainAxisAlignment.end,
              //                       children: [
              //                         TextButton(
              //                             // onPressed: () {
              //                             //   Navigator.push(
              //                             //       context,
              //                             //       MaterialPageRoute(
              //                             //           builder: (context) =>
              //                             //               ForgotPassword()));
              //                             // },
              //                             child: Text('Forgot password?',
              //                                 style: TextStyle(
              //                                     fontSize: 10,
              //                                     color: Colors.black45))),
              //                       ],
              //                     ),
              //                   )
              //                 ]),
              //
              //                 SizedBox(height: 15),
              //                 SizedBox(
              //                   width: double.infinity,
              //                   height: 40,
              //                   child: OutlinedButton(
              //                     onPressed: () {
              //                       Navigator.push(
              //                           context,
              //                           MaterialPageRoute(
              //                               builder: (context) => SignIn()));
              //                     },
              //                     child: Text(
              //                       "Sign In",
              //                       style: TextStyle(color: Colors.white),
              //                     ),
              //                     style: ButtonStyle(
              //                         backgroundColor:
              //                         MaterialStateProperty.all(Colors.orange),
              //                         shape: MaterialStateProperty.all(
              //                             RoundedRectangleBorder(
              //                                 borderRadius:
              //                                 BorderRadius.circular(10.0)))),
              //                   ),
              //                 ),
              //
              //                 SizedBox(height: 10),
              //                 Container(
              //                   alignment: Alignment.center,
              //                   child: Text(
              //                     "Or login with",
              //                     style: TextStyle(
              //                         decoration: TextDecoration.none,
              //                         fontSize: 10,
              //                         fontWeight: FontWeight.bold,
              //                         color: Colors.black45),
              //                   ),
              //                 ),
              //
              //                 SizedBox(
              //                   height: 10,
              //                 ),
              //                 Row(
              //                   // crossAxisAlignment: CrossAxisAlignment.stretch,
              //                   children: [
              //                     Container(
              //                         decoration: BoxDecoration(
              //                             borderRadius: BorderRadius.circular(10),
              //                             color: Colors.redAccent),
              //                         child: SizedBox(
              //                           width:
              //                           MediaQuery.of(context).size.width / 3 -
              //                               30,
              //                           height: 70,
              //                         )),
              //                     SizedBox(
              //                       width: 30,
              //                     ),
              //                     Container(
              //                         decoration: BoxDecoration(
              //                             borderRadius: BorderRadius.circular(10),
              //                             color: Colors.lightBlue),
              //                         child: SizedBox(
              //                           width:
              //                           MediaQuery.of(context).size.width / 3 -
              //                               30,
              //                           height: 70,
              //                         )),
              //                     SizedBox(
              //                       width: 30,
              //                     ),
              //                     Container(
              //                         decoration: BoxDecoration(
              //                             borderRadius: BorderRadius.circular(10),
              //                             color: Colors.indigoAccent),
              //                         child: SizedBox(
              //                           width:
              //                           MediaQuery.of(context).size.width / 3 -
              //                               30,
              //                           height: 70,
              //                         )),
              //                   ],
              //                 ),
              //
              //                 Row(
              //                   crossAxisAlignment: CrossAxisAlignment.center,
              //                   mainAxisAlignment: MainAxisAlignment.center,
              //                   children: [
              //                     Container(
              //                       alignment: Alignment.center,
              //                       child: Text(
              //                         "Don't have an account?",
              //                         style: TextStyle(
              //                             decoration: TextDecoration.none,
              //                             fontSize: 10,
              //                             fontWeight: FontWeight.bold,
              //                             color: Colors.black45),
              //                       ),
              //                     ),
              //                     TextButton(
              //                         onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp()));},
              //                         child: Text(
              //                           "Sign Up",
              //                           style: TextStyle(
              //                               decoration: TextDecoration.none,
              //                               fontSize: 10,
              //                               fontWeight: FontWeight.bold,
              //                               color: Colors.indigoAccent),
              //                         )),
              //
              //                   ],
              //                 ),
              //               ],
              //             )),
              //       ),
              //     ),
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
