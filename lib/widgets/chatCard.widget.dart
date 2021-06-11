import 'package:flutter/material.dart';

import '../asset.dart';

enum LastMesssageType {
  Image,
  Sticker,
  Voice,
  Video,
  Text,
}
enum SendMessage {
  Deliverd,
  Read,
  NotDeliverd,
}

class ChatCard extends StatelessWidget {
  final String avatar;
  final String title;
  final String subtitle;
  final String time;
  final int? newMessageCount;
  final LastMesssageType messageType;
  final SendMessage sendMessageStatus;
  final bool isYou;

  ChatCard({
    required this.avatar,
    required this.title,
    required this.subtitle,
    required this.messageType,
    required this.isYou,
    required this.time,
    this.newMessageCount,
    this.sendMessageStatus: SendMessage.NotDeliverd,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          // padding: EdgeInsets.all(5),
          margin: EdgeInsets.only(top: 5),
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: primaryGreen,
              backgroundImage: AssetImage(avatar),
            ),
            title: Container(
              width: MediaQuery.of(context).size.width / 2,
              child: Text(
                title,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            subtitle: Container(
              width: 200,
              margin: EdgeInsets.only(top: 5),
              child: Row(
                children: [
                  isYou
                      ? Icon(
                          sendMessageStatus == SendMessage.NotDeliverd
                              ? Icons.done
                              : Icons.done_all_rounded,
                          color: sendMessageStatus == SendMessage.Read
                              ? Colors.blue
                              : Colors.grey,
                          size: 20,
                        )
                      : SizedBox(),
                  SizedBox(width: 5),
                  messageType != LastMesssageType.Text
                      ? Icon(
                          messageType == LastMesssageType.Image
                              ? Icons.image_rounded
                              : messageType == LastMesssageType.Voice
                                  ? Icons.keyboard_voice
                                  : Icons.ac_unit,
                          color: Colors.grey,
                          size: 20,
                        )
                      : SizedBox(),
                  SizedBox(
                    width: 3,
                  ),
                  Container(
                    width: messageType == LastMesssageType.Voice
                        ? MediaQuery.of(context).size.width / 3
                        : MediaQuery.of(context).size.width / 2,
                    child: Text(
                      subtitle,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                  ),
                ],
              ),
            ),
            trailing: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  time,
                  style: TextStyle(
                      color: newMessageCount != null && newMessageCount != 0
                          ? Colors.green
                          : Colors.grey,
                      fontSize: 11),
                ),
                SizedBox(height: 5),
                newMessageCount != null && newMessageCount != 0
                    ? Container(
                        width: 25,
                        height: 25,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.green,
                        ),
                        child: Center(
                          child: Text(
                            newMessageCount!.toString(),
                            style: TextStyle(color: Colors.white, fontSize: 10),
                          ),
                        ),
                      )
                    : SizedBox(),
              ],
            ),
          ),
        ),
        Divider(
          height: 1,
        ),
      ],
    );
  }
}
