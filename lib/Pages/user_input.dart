import 'package:flutter/material.dart';

class ToDoApp extends StatefulWidget {
  const ToDoApp({Key? key}) : super(key: key);

  @override
  State<ToDoApp> createState() => _ToDoAppState();
}

class _ToDoAppState extends State<ToDoApp> {
  //greeting message var
  String greetingMessage = "";
  //greet user method
  void greetUser() {
    String userName = myController.text;
    setState(() {
      greetingMessage = "Hello " + userName;
    });
  }

  //text editing controller to get access to what the user type
  TextEditingController myController = TextEditingController();
  //UI
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //greeting message
            Text(greetingMessage),
            TextField(
              controller: myController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Type your username",
              ),
            ),
            //button
            ElevatedButton(
              onPressed: greetUser,
              child: Text('Tap'),
            )
          ],
        ),
      )),
    );
  }
}
