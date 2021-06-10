import 'package:flutter/material.dart';
import 'package:watsapp_clone/widgets/appBar.widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: BuiltAppBar(),
        preferredSize: Size.fromHeight(100),
      ),
    );
  }
}
