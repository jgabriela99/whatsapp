import 'package:flutter/material.dart';
import 'contactosInfo.dart';
import 'myStatusScreen.dart';

class StatusScreen extends StatefulWidget {
  @override
  StatusScreenState createState() => new StatusScreenState();
}

class StatusScreenState extends State<StatusScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Column(
          children: <Widget>[
            MyStatusScreen(),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: contactosinfo.length,
              itemBuilder: (context, index) {
                return ListTile(
                    title: Text(
                      contactosinfo[index]['name'].toString(),
                      style: const TextStyle(fontSize: 15),
                    ),
                    subtitle: Text(
                      contactosinfo[index]['estadopost'].toString(),
                      style: const TextStyle(fontSize: 15),
                    ),
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                        contactosinfo[index]['profilePic'].toString(),
                      ),
                    ));
              },
            ),
          ],
        ),
      ),
    );
  }
}
