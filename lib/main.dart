import 'package:flutter/material.dart';
import 'package:internship_ui/signIn.dart';
import 'package:internship_ui/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}


class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: SizedBox(height: 800, child: Column(
          children: [
            Image(image: AssetImage('assets/images/startup_image.png')),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(10.0),
                color: Colors.white,
                child: SizedBox.expand(
                    child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Upgrade your account to start your journey.",
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Access the 50+ million book in various languages",
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                          color: Colors.black45),
                    ),
                    SizedBox(
                      height: 55,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: OutlinedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => SignIn()));
                        },
                        child: Text(
                          "START FREE TRIAL",
                          style: TextStyle(color: Colors.white),
                        ),
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.green),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0)))),
                      ),
                    ),


                    SizedBox(
                      height: 25,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: OutlinedButton(
                        onPressed: (){print("pressed");},
                        child: Text(
                          "LATER",
                          style: TextStyle(color: Colors.orange),
                        ),
                        style: ButtonStyle(
                            backgroundColor:
                            MaterialStateProperty.all(Colors.white),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  side: BorderSide(color: Colors.orange, width: 2, style: BorderStyle.solid),
                                    borderRadius: BorderRadius.circular(10.0))
                            )),
                      ),
                    )
                  ],
                )),
              ),
            ),
          ],
        ),
        )
      );
  }
}
