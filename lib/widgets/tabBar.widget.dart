import 'package:flutter/material.dart';

TabBar builtTabBar(_tabController) {
  return TabBar(
    indicatorColor: Colors.white,
    indicatorWeight: 3,
    controller: _tabController,
    tabs: [
      Container(
        child: Icon(Icons.camera_alt),
      ),
      tabLabal(labal: 'CHATS'),
      tabLabal(labal: 'STATUS'),
      tabLabal(labal: 'CALLS'),
    ],
  );
}

Container tabLabal({required String labal}) {
  return Container(
    padding: EdgeInsets.all(10),
    child: Text(
      labal,
      style: TextStyle(
        fontSize: 13,
      ),
    ),
  );
}
