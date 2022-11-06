import 'package:flutter/material.dart';

class camera extends StatelessWidget {
  const camera({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Camera"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CustomCamera(
            title: " Galeri ",
            icon: Icons.image,
            onClick: () => {},
          ),
          CustomCamera(title: "Camera", icon: Icons.camera, onClick: () => {}),
        ],
      )),
    );
  }
}

Widget CustomCamera({
  required String title,
  required IconData icon,
  required VoidCallback onClick,
}) {
  return Container(
      height: 100,
      width: 200,
      child: ElevatedButton(
        onPressed: onClick,
        child: Row(
          children: [Icon(icon), SizedBox(width: 50), Text(title)],
        ),
      ));
}
