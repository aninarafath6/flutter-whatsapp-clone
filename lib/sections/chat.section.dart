import 'package:flutter/material.dart';
import 'package:watsapp_clone/asset.dart';
import 'package:watsapp_clone/dummyChatData.dart';
import 'package:watsapp_clone/widgets/chatCard.widget.dart';

class ChatSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        child: Stack(
          children: [
            ListView.builder(
              itemCount: chatData.length,
              itemBuilder: (contex, index) {
                return ChatCard(
                  avatar: chatData[index]['avatar'],
                  title: chatData[index]['title'],
                  subtitle: chatData[index]['subtitle'],
                  time: chatData[index]['time'],
                  messageType: chatData[index]['messageType'],
                  newMessageCount: chatData[index]['newMessageCount'] != null
                      ? chatData[index]['newMessageCount']
                      : 0,
                  isYou: chatData[index]['isYou'],
                  sendMessageStatus:
                      chatData[index]['sendMessageStatus'] != null
                          ? chatData[index]['sendMessageStatus']
                          : SendMessage.NotDeliverd,
                );
              },
            ),
            Positioned(
              bottom: 15,
              right: 20,
              child: FloatingActionButton(
                backgroundColor: Colors.green,
                onPressed: () {},
                child: Icon(Icons.message),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
