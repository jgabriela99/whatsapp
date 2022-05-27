import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'Screen/callScreen.dart';
import 'Screen/statusScreen.dart';
import 'Screen/chatScreen.dart';
import 'Screen/cameraScreen.dart';

class Home extends StatefulWidget {
  @override
  HomeState createState() => new HomeState();
}

class HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    //inicializando tabController
    super.initState();
    _tabController = new TabController(vsync: this, length: 4, initialIndex: 1)
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  void dispose() {
    //metodo dipose tabController
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    TabBar tabBar = new TabBar(
      controller: _tabController,
      tabs: [
        new Tab(
          icon: Icon(Icons.camera_alt),
        ),
        new Tab(
          text: "CHATS",
        ),
        new Tab(
          text: "ESTADOS",
        ),
        new Tab(
          text: "LLAMADAS",
        ),
      ],
      isScrollable: true,
    );
    AppBar appBar = AppBar(
      title: new Text("Whatsapp Clone"),
      backgroundColor: Colors.green.shade800,
      bottom: tabBar,
      actions: <Widget>[
        Icon(Icons.search),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5.0),
        ),
        Icon(Icons.more_vert),
      ],
    );

    TabBarView tabBarview = new TabBarView(
      controller: _tabController,
      children: <Widget>[
        new CameraScreen(),
        new ChatScreen(),
        new StatusScreen(),
        new CallScreen(),
      ],
    );

    floatingActionButton(Icon icon) {
      return new FloatingActionButton(
        onPressed: () {},
        foregroundColor: Colors.white,
        backgroundColor: Theme.of(context).accentColor,
        child: icon,
      );
    }

    Widget floatingActionButtonStatus(Icon iconEdit, Icon iconCamera) {
      return new Column(
        children: <Widget>[
          new FloatingActionButton(
            onPressed: () {},
            foregroundColor: new Color(0xff49646c),
            backgroundColor: new Color(0xffebf4fc),
            child: iconEdit,
          ),
          SizedBox(
            height: 10,
          ),
          floatingActionButton(iconCamera)
        ],
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
      );
    }

    return Scaffold(
      appBar: appBar,
      body: tabBarview,
      floatingActionButton: _tabController.index == 0
          ? new Container()
          : _tabController.index == 1
              ? floatingActionButton(Icon(Icons.message))
              : _tabController.index == 2
                  ? floatingActionButtonStatus(Icon(Icons.edit), Icon(Icons.camera_alt))
                  : floatingActionButton(Icon(Icons.add_call)),
    );
  }
}
