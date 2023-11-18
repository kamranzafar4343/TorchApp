import 'package:flutter/material.dart';
import 'package:torch_controller/torch_controller.dart';

class TorchLite extends StatefulWidget {
  const TorchLite({super.key});

  @override
  State<TorchLite> createState() => _TorchLiteState();
}

class _TorchLiteState extends State<TorchLite> {
  final bgColor = const Color(0Xff2C3333);
  final textColor = const Color(0XffE7F6F2);
  var isActive = false;
  var controller = TorchController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
        title: const Text(
          "Ancient Light",
          style: TextStyle(
              color: Colors.amber, fontWeight: FontWeight.bold, fontSize: 30),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      isActive ? 'assets/torch_on.png' : 'assets/torch_off.png',
                      height: 200,
                      width: 200,
                      color: isActive ? null : null,
                    ),
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                  ],
                ),
              ),
            ),
          ),
          CircleAvatar(
              minRadius: 30,
              maxRadius: 32,
              child: Transform.scale(
                scale: 1.5,
                child: IconButton(
                    onPressed: () {
                      controller.toggle();
                      isActive = !isActive;
                      setState(() {});
                    },
                    icon: const Icon(Icons.power_settings_new)),
              )),
          SizedBox(
            height: size.height * 0.2,
          ),
          const Text(
            "Developed with Kamran Zafar",
            style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255), fontSize: 14.0),
          ),
          SizedBox(
            height: size.height * 0.05,
          ),
        ],
      ),
    );
  }
}
