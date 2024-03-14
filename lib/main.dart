import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// Widget => Görüntü sağlayan yapı.
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Scaffold(
        body: Center(
          child: Row(
            children: [
              Column(
                children: [Text("Merhaba")],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
