import 'package:flutter/material.dart';
import 'package:nexxora/widgets/call_widget.dart';

class CallsPage extends StatefulWidget {
  const CallsPage({super.key});

  @override
  State<CallsPage> createState() => _CallsPageState();
}

class _CallsPageState extends State<CallsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0D1B2A),
      appBar: AppBar(
        backgroundColor: Color(0xFF0D1B2A),
        elevation: 0,
        scrolledUnderElevation: 0,
        title: Text("Calls", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),),
        automaticallyImplyLeading: false,
        actions: [
          Icon(Icons.search, color: Colors.white,),
          SizedBox(width: 10),
          Icon(Icons.more_vert, color: Colors.white,),
          SizedBox(width: 10),
        ],
      ),
      body: ListView(
        children:  [
          SizedBox(height: 10),
          CallWidget(name: "", avatarUrl: "", time: "", isMissed:true ,isVideoCall: true),
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
