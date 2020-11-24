import 'package:MapPreoject/AfterLoginPage/ChatPage/Chat_detail_Page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatMessage {
  CircleAvatar circleAvatar;
  String message;
  MessageType type;
  ChatMessage({@required this.message, @required this.type, Image circleAvatar});
}
