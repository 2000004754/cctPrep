import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
//
//Container for Text Button to make it look nicer
// Goes from Second Page back to HomePage

      Container(
          color: Colors.blue,
          child: TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text(
              'Back to Home Page',
              style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
            ),
          )),

// Image go to pubspec.yaml to do the rest
// make sure you create folders for image
// and put it into the yaml file

      Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(75)),
        child: Container(
          margin: const EdgeInsets.all(8.0),
          height: 200,
          width: 200,
          decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage("assets/images/Profile.JPG"),
                fit: BoxFit.fill,
              )),
        ),
      ),
    ])));
  }
}
