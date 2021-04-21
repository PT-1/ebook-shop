import 'dart:async';

import 'package:flutter/material.dart';
import 'package:internship_ui/main.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  @override
  void initState() {
    super.initState();
    loadData();
  }

  Future<Timer> loadData() async{
    return Timer(Duration(seconds: 3), onDoneLoading);
  }

  onDoneLoading(){
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => FirstScreen()));
  }

  @override
  void dispose() {
    super.dispose();
    // loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromRGBO(64,28,28, 0.9),
        child: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Center(
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(5.0),
                  child: Image(image: AssetImage("assets/images/book_image.png"),)
              ),
            ),
          ),
      ),
    );
  }
}
