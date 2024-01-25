import 'package:flutter/material.dart';
import 'package:flutter_application_1/fourth.dart';

class third extends StatefulWidget {
  const third({super.key});

  @override
  State<third> createState() => _thirdState();
}

class _thirdState extends State<third> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                        "images/sincerely-media-gx-VcTo8e1s-unsplash.jpg"),
                    fit: BoxFit.cover)),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 60, top: 610),
            child: Text(
              "Discover Your Type \n          Of Plant",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.green[900]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 120, top: 700),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.green[400], // background
                  onPrimary: Colors.green, // foreground
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  fourthpage()),
                  );
                },
                child: Text(
                  "Continue",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                )),
          ),
        ],
      ),
    );
  }
}
