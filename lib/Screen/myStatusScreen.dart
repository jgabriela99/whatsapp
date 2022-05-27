import 'package:flutter/material.dart';

class MyStatusScreen extends StatelessWidget {
  const MyStatusScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Stack(
        children: [
          CircleAvatar(
            radius: 24,
            backgroundColor: Colors.white,
            backgroundImage: AssetImage("assets/power.jpg"),
          ),
          Positioned(
              bottom: 0,
              right: 0,
              child: CircleAvatar(
                  backgroundColor: Colors.green,
                  radius: 10,
                  child: Icon(
                    Icons.add,
                    size: 20,
                    color: Colors.white,
                  ))),
        ],
      ),
      title: Text(
        "Mi estado",
        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
      ),
      subtitle: Text(
        "Añade una actualización",
        style: TextStyle(fontSize: 13, color: Colors.grey[900]),
      ),
    );
  }
}
