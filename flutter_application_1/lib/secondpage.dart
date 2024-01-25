import 'package:flutter/material.dart';
import 'package:flutter_application_1/thirdpage.dart';

class secondpage extends StatefulWidget {
  const secondpage({super.key});

  @override
  State<secondpage> createState() => _secondpageState();
}

class _secondpageState extends State<secondpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                        "images/scott-webb-UAKjDbHGD7c-unsplash.jpg"),
                    fit: BoxFit.cover)),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 50),
            child: Column(
              children: [
                Text(
                  "welcome",
                  style: TextStyle(
                      fontSize: 60,
                      fontWeight: FontWeight.bold,
                      color: Colors.green[900]),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 55),
                  child: Text(
                    "We're glad that \n you are here ",
                    style: TextStyle(fontSize: 25, color: Colors.green[900]),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 90, top: 700),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.green[400], // background
                  onPrimary: Colors.green, // foreground
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => third()),
                  );
                },
                child: Text(
                  "Lets get started",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                )),
          )
        ],
      ),
    );
  }
}
