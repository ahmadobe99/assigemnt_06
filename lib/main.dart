import 'package:flutter/material.dart';
import 'package:myapp/secreen_one.dart';
import 'package:myapp/secreen_tow.dart';

void main() {
  runApp(MaterialApp(
    home: Myapp(),
  ));
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return Home();
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          ElevatedButton(
              onPressed: () {
                setState(() {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return Secreen_one();
                    },
                  ));
                });
              },
              child: Text("Go to secreen one")),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  Navigator.pop(context, MaterialPageRoute(
                    builder: (context) {
                      return Secreen_tow();
                    },
                  ));
                });
              },
              child: Text("Go to secreen tow"))
        ]),
      ),
    );
  }
}
