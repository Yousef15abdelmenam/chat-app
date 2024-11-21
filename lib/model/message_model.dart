import 'package:scholar_chat/constants.dart';

class Message {
  final String message;
  final String id;
  Message(this.message,this.id);

  factory Message.fromjson(jsondata) {
    return Message(jsondata[kMessage], jsondata['id']);
  }
}
