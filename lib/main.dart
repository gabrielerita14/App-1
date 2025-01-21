import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: MyButton(),
  )); // MaterialApp
}

class MyButton extends StatefulWidget {
  const MyButton({super.key});

  @override
  MyButtonState createState() {
    return MyButtonState();
  }
}

class MyButtonState extends State<MyButton> {
  int counter = 0;
  List<String> strings = ['Flutter', 'é', 'legal', 'e', 'incrível.'];
  String displayedString = "Olá Mundo!";

  void onPressOfButton() {
    setState(() {
      displayedString = strings[counter];
      counter = counter < 4 ? counter + 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Exemplo com StatefulWidget"),
        backgroundColor: Colors.green,
      ), // AppBar
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(displayedString, style: const TextStyle(fontSize: 40.0)),
            const Padding(padding: EdgeInsets.all(10.0)),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              onPressed: onPressOfButton,
              child: const Text(
                "clique aqui",
                style: TextStyle(color: Colors.white),
              ),
            ), // ElevatedButton
          ], // <Widget>[]
        ), // Column
      ), // Container
    );
  }
}
