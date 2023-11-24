// this thing only works in mobile

import 'package:flutter/material.dart';
import 'package:torch/torch_lite.dart';
import 'package:torch_controller/torch_controller.dart';

void main() {
  TorchController().initialize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Torch App',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: const TorchLite(),
    );
  }
}
