import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:watsapp_clone/widgets/tabBar.widget.dart';

class BuiltAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(100);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      
      // ignore: deprecated_member_use
      title: appBarTitle(),
      actions: appBarActions,
      bottom: builtTabBar(),
    );
  }

  List<Widget> get appBarActions {
    return [
      IconButton(
        onPressed: () => {},
        icon: Icon(Icons.search),
      ),
      IconButton(
        onPressed: () => {},
        icon: Icon(Icons.more_vert),
      ),
    ];
  }

  Text appBarTitle() {
    return Text(
      'WhatsApp',
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
