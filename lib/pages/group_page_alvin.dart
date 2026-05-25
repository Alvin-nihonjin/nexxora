import 'package:flutter/material.dart';
import 'package:nexxora/widgets/group_widget_alvin.dart';

class GroupPage extends StatefulWidget {
  const GroupPage({super.key});

  @override
  State<GroupPage> createState() => _GroupPageState();
}

class _GroupPageState extends State<GroupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0D1B2A),
      appBar: AppBar(
        backgroundColor: Color(0xFF0D1B2A),
        elevation: 0,
        scrolledUnderElevation: 0,
        title: Text("Group", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),),
        automaticallyImplyLeading: false,
        actions: [
          Icon(Icons.search, color: Colors.white,),
          SizedBox(width: 10),
          Icon(Icons.more_vert, color: Colors.white,),
          SizedBox(width: 10),
        ],
      ),
      body: ListView(
        children: [
          SizedBox(height: 10),
          GroupWidget(name: "", lastMessage: "", time: "", avatarUrl: ""),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xff8B5CF6),
        shape: CircleBorder(),
        child: Icon(Icons.add, color: Colors.white,),
      ),
    );
  }
}
