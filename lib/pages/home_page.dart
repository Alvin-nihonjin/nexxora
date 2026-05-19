import 'package:flutter/material.dart';
import 'package:nexxora/services/chats_service.dart';
import 'package:nexxora/widgets/chats_widget.dart';
import 'package:nexxora/widgets/story_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0D1B2A),
      appBar: AppBar(
        backgroundColor: Color(0xFF0D1B2A),
        elevation: 0,
        scrolledUnderElevation: 0,
        title: Text("Nexora", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),),
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
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: StoryWidget(),
          ),
          SizedBox(height: 10),
          ChatsWidget(name: "", lastMessage: "", time: "", avatarUrl: ""),
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
