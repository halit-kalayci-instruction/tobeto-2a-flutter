import 'package:flutter/material.dart';

class Example extends StatefulWidget {
  const Example({super.key});
  @override
  State<StatefulWidget> createState() {
    return _ExampleState();
  }
}

class _ExampleState extends State<Example> {
  String _btnText = "Merhaba";

  void onBtnPress() {
    setState(() {
      _btnText = "Tobeto";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: onBtnPress,
          child: const Text("Click"),
        ),
        Text(_btnText)
      ],
    );
  }
}
