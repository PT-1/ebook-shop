
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:internship_ui/signIn.dart';

import 'constants/login_register.dart';

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
                  decoration: BoxDecoration(color: Color.fromRGBO(64,28,28, 0.9)),
                ),
                Positioned(
                  child: Card(
                      elevation: 20,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5.0),
                        child: Image(
                          image: AssetImage("assets/images/book_image.png"),
                        ),
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
              Expanded(
                child: Container(
                  color: Colors.white,
                  child: SizedBox.expand(
                    child: Padding(
                      padding: EdgeInsets.all(15),
                      child: Form(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              // Name field
                              Text(
                                "Full Name",
                                style: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black45),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.grey[200],
                                    borderRadius: BorderRadius.circular(10)),
                                child: Row(
                                  children: [
                                    name(context),
                                    Container()
                                  ],
                                ),
                              ),

                              SizedBox(
                                height: 20,
                              ),




                              // Email field
                              Text(
                                "Email Address",
                                style: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black45),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.grey[200],
                                    borderRadius: BorderRadius.circular(10)),
                                child: Row(
                                  children: [
                                    email(context),
                                    Container(
                                      child: Icon(Icons.chevron_right_sharp),
                                      color: Colors.white,
                                    )
                                  ],
                                ),
                              ),

                              SizedBox(
                                height: 20,
                              ),



                              //  Password field
                              Text(
                                "Password",
                                style: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black45),
                              ),

                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.grey[200],
                                    borderRadius: BorderRadius.circular(10)),
                                child: Row(
                                  children: [
                                    password(context),
                                    Container(
                                      child: Icon(Icons.remove_red_eye),
                                    )
                                  ],
                                ),
                              ),




                              // confirm password
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "Confirm Password",
                                style: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black45),
                              ),

                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.grey[200],
                                    borderRadius: BorderRadius.circular(10)),
                                child: Row(
                                  children: [
                                    password(context),
                                    Container()
                                  ],
                                ),
                              ),




                              // Sign up button
                              SizedBox(
                                width: double.infinity,
                                height: 40,
                                child: OutlinedButton(
                                  onPressed: () {
                                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("To be implemented")));
                                  },
                                  child: Text(
                                    "Sign Up",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  style: ButtonStyle(
                                      backgroundColor:
                                      MaterialStateProperty.all(Colors.orange),
                                      shape: MaterialStateProperty.all(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                              BorderRadius.circular(10.0)))),
                                ),
                              ),

                              SizedBox(height: 10),



                              SizedBox(
                                height: 10,
                              ),


                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    child: Text(
                                      "Already have an account?",
                                      style: TextStyle(
                                          decoration: TextDecoration.none,
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black45),
                                    ),
                                  ),
                                  TextButton(
                                      onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => SignIn()));},
                                      child: Text(
                                        "Sign In",
                                        style: TextStyle(
                                            decoration: TextDecoration.none,
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.indigoAccent),
                                      )),

                                ],
                              ),
                            ],
                          )),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
