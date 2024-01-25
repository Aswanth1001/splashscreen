import 'package:flutter/material.dart';

class fourthpage extends StatefulWidget {
  const fourthpage({super.key});

  @override
  State<fourthpage> createState() => _fourthpageState();
}

class _fourthpageState extends State<fourthpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image:
                        AssetImage("images/alex-lvrs-mwINQsW2KJs-unsplash.jpg"),
                    fit: BoxFit.cover)),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 60, top: 630),
            child: Text(
              "Connect With Other \n      Plant Lovers",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.green[900]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 80, top: 700),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.green[400], // background
                  onPrimary: Colors.green, // foreground
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => fourthpage()),
                  );
                },
                child: Text(
                  "Create Account",
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
