import 'package:flutter/material.dart';

class PlayerStatusPage extends StatefulWidget {
  const PlayerStatusPage({super.key});

  @override
  State<PlayerStatusPage> createState() => _PlayerStatusPageState();
}

class _PlayerStatusPageState extends State<PlayerStatusPage> {

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [

            ],
          ),
        ),
      ),

      floatingActionButton: const FloatingActionButton(
        tooltip: 'chatroom',
        onPressed: null,
        child: Icon(Icons.message),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  String get htmlContent => "";
}
