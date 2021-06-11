import 'package:flutter/material.dart';
import 'package:watsapp_clone/sections/calls.section.dart';
import 'package:watsapp_clone/sections/camara.secion.dart';
import 'package:watsapp_clone/sections/chat.section.dart';
import 'package:watsapp_clone/sections/status.section.dart';
import 'package:watsapp_clone/widgets/appBar.widget.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  // ignore: unused_field
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this, initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: BuiltAppBar(
          controller: _tabController,
        ),
        preferredSize: Size.fromHeight(100),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          CamaraSection(),
          ChatSection(),
          StatusSection(),
          CallSection(),
        ],
      ),
    );
  }
}
