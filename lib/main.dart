//Packages and Libaries
import 'package:firebase_database/firebase_database.dart';
import 'package:practice_cct/MyPage2.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

//The Main function that runs everything
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
//Runs App
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
//
//Function for switching pages will be called later
//
  void switchingPages() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const Page2()));
  }

  DatabaseReference dataRef = FirebaseDatabase.instance.ref('data');

//variables that will be set later for counter button
//
  late int _counter;
  late DatabaseReference counterRef;
  late StreamSubscription counterStream;

//Function for Counting the button will be called later
//
  void incrementCounter() {
    setState(() {
      _counter++;
      counterRef.set(_counter);
    });
  }

  @override
  void initState() {
    super.initState();
    _counter = 0;
    counterRef = dataRef.child('counter');
    counterStream = counterRef.onValue.listen((event) {
//print(event.snapshot.value);
      setState(() {
        _counter = event.snapshot.value as int;
      });
      final data = event.snapshot.value;
      if (data != null) {
        setState(() {
          _counter = data as int;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context)

// *** Up to here is starter code Copy and then start Coding Bitch *** \\
// *** switchingPages is function name to switch the page *** \\
// *** incrementCounter is function name to count time's youve pressed button *** \\

  {
    return Scaffold(
      body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
//
// Container to make Text Button look nicer
// TextButton goes from HomePage to Page 2
        Column(children: [
          const Text(
            ' Go to Page 2',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Container(
            color: Colors.blue,
            child: IconButton(
              color: Colors.red,
              icon: const Icon(
                Icons.send,
              ),
              onPressed: switchingPages,
            ),
          ),
// Floating Action Button for Counter
// This is the Button that call the incrementCounter Function
// and adds 1 every time button is clicked and prints it on screen
        ]),
      ])),
      floatingActionButton: FloatingActionButton(
          onPressed: incrementCounter,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('$_counter'),
              const Icon(Icons.send_outlined),
            ],
          )),
    );
  }
}
