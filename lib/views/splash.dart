import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news/views/home.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    movetohome();
  }

  movetohome() async {
    await Future.delayed(Duration(milliseconds: 2500), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Home()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Daily",
                style: GoogleFonts.openSans(
                    fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Text("News",
                  style: GoogleFonts.openSans(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue)),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text("Developed by Smil using newsapi.org API"),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircularProgressIndicator(),
          ),
        ],
      ),
    );
  }
}
