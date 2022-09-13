import 'package:flutter/material.dart';
import 'package:myapp/main.dart';

class Secreen_one extends StatefulWidget {
  const Secreen_one({super.key});

  @override
  State<Secreen_one> createState() => _Secreen_oneState();
}

class _Secreen_oneState extends State<Secreen_one> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: (Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Hello from screen One ",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),

  ElevatedButton(
              onPressed: () {
                setState(() {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return Home();
                    },
                  ));
                });
              },
              child: Text("Go back to Home"))
          ],
        ),
      )),
    );
  }
}
