import 'package:flutter/material.dart';
import 'contactosInfo.dart';

class CallScreen extends StatefulWidget {
  @override
  CallScreenState createState() => new CallScreenState();
}

class CallScreenState extends State<CallScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(top: 10),
      child: ListView.builder(
        itemCount: contactosinfo.length,
        itemBuilder: (context, index) {
          return ListTile(
              title: Text(
                contactosinfo[index]['name'].toString(),
                style: const TextStyle(fontSize: 15),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 6),
                child: Text(
                  contactosinfo[index]['estadopost'].toString(),
                  style: const TextStyle(fontSize: 15),
                ),
              ),
              trailing: Image.asset(contactosinfo[index]['llamadaimag'].toString()),
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                  contactosinfo[index]['profilePic'].toString(),
                ),
              ));
        },
      ),
    ));
  }
}
