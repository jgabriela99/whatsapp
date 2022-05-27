import 'package:flutter/material.dart';
import 'contactosInfo.dart';

class ChatScreen extends StatefulWidget {
  @override
  ChatScreenState createState() => new ChatScreenState();
}

class ChatScreenState extends State<ChatScreen> {
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
                  contactosinfo[index]['message'].toString(),
                  style: const TextStyle(fontSize: 15),
                ),
              ),
              trailing: Text(contactosinfo[index]['time'].toString()),
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
