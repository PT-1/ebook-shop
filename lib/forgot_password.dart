
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'constants/login_register.dart';

class ForgotPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: 600,
          child: Column(
            children: [
              Stack(children: [
                Container(
                  height: 220,
                  decoration: BoxDecoration(color: Color.fromRGBO(41, 207, 185, 0.5)),
                ),
                Positioned(
                  top: 50,
                    left: 10,
                    child: TextButton(
                        child: Icon(Icons.arrow_back, color: Colors.white,),
                      onPressed: () {
                          Navigator.pop(context);
                      },
                    )
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
                      "Forgot Password",
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


                              // text message

                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 220,
                                    alignment: Alignment.center,
                                    child: Text(
                                      "Enter your email address to receive recovery code",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          decoration: TextDecoration.none,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black45),
                                    ),
                                  ),

                                ],
                              ),


                              SizedBox(height: 25,),
                              // Continue button
                              SizedBox(
                                width: double.infinity,
                                height: 40,
                                child: OutlinedButton(
                                  onPressed: () {
                                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("To be implemented")));
                                  },
                                  child: Text(
                                    "Continue",
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
