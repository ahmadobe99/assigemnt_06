import 'package:flutter/material.dart';
import 'package:myapp/main.dart';

class Secreen_tow extends StatefulWidget {
  const Secreen_tow({super.key});

  @override
  State<Secreen_tow> createState() => _Secreen_towState();
}

class _Secreen_towState extends State<Secreen_tow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Hello from screen Tow ",
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
        
      ),
    );
  }
}
