import 'package:flutter/material.dart';
import 'package:messio_messaging/widgets/ChatAppBar.dart';
import 'package:messio_messaging/widgets/ChatListWidget.dart';
import 'package:messio_messaging/widgets/InputWidget.dart';

class ConversationPage extends StatefulWidget {
  const ConversationPage({Key key}) : super(key: key);

  @override
  _ConversationPageState createState() => _ConversationPageState();
}

class _ConversationPageState extends State<ConversationPage> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: ChatAppBar(),
      body: Stack(children: <Widget>[
        Column(
          children: <Widget>[
            ChatListWidget(),
            InputWidget()
          ],
        )
      ],),
    ));
  }
}
