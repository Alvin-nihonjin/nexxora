import 'package:flutter/material.dart';
import 'package:nexxora/pages/setting_page_alvin.dart';
import 'package:nexxora/services/chats_service_alvin.dart';
import 'package:nexxora/services/your_profile_service_alvin.dart';
import 'package:nexxora/widgets/chats_widget_alvin.dart';
import 'package:nexxora/widgets/story_widget_alvin.dart';

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
        title: Text(
          "Nexora",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        automaticallyImplyLeading: false,
        actions: [
          Icon(Icons.search, color: Colors.white),
          SizedBox(width: 10),
          Builder(
            builder: (context) {
              return IconButton(
                onPressed: () {
                  Scaffold.of(context).openEndDrawer();
                },
                icon: Icon(Icons.more_vert, color: Colors.white),
              );
            },
          ),
          SizedBox(width: 10),
        ],
      ),
      endDrawer: SizedBox(
        width: 200,
        child: Drawer(
          backgroundColor: Color(0xff182234), 
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 40),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          SettingPage(name: "", bio: "", avatar: "", phone: ""),
                    ),
                  );
                },
                child: Row(
                  children: [
                    Icon(Icons.settings, color: Colors.white, size: 25,),
                    Text("Setting", style: TextStyle(color: Colors.white, fontSize: 25)),
                  ],
                ),
              ),
            ],
          ),
        ),
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
        child: Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}
