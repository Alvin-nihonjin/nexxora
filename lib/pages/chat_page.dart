import 'package:flutter/material.dart';
import 'package:nexxora/pages/call_page_akbar.dart';
import 'package:nexxora/pages/profile_page_alvin.dart';

class ChatPage extends StatefulWidget {
  final String name;
  final String phone;
  final String bio;
  final String date;
  final String lastMessage;
  final String time;
  final String avatarUrl;
  const ChatPage({
    super.key,
    required this.name,
    required this.phone,
    required this.bio,
    required this.date,
    required this.lastMessage,
    required this.time,
    required this.avatarUrl,
  });

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final TextEditingController _controller = TextEditingController();
  final List<String> psn = [];

  void _kirimpesan() {
    if (_controller.text.trim().isEmpty) return;
    setState(() {
      psn.add(_controller.text.trim());
      _controller.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0D1B2A),
      appBar: AppBar(
        title: Row(
          children: [
            GestureDetector( onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilePage(name: widget.name, phone: widget.phone, avatarUrl: widget.avatarUrl, bio: widget.bio, date: widget.date),));
            },
              child: CircleAvatar(
                radius: 22,
                backgroundImage: AssetImage(widget.avatarUrl),
              ),
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.name, style: TextStyle(color: Colors.white)),
                Text(
                  widget.bio,
                  style: TextStyle(color: Color(0xff94A3B8), fontSize: 15),
                ),
              ],
            ),
          ],
        ),
        iconTheme: IconThemeData(color: Colors.white),
        actions: [
          Row(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CallPage(
                        name: widget.name,
                        phone: widget.phone,
                        avatarUrl: widget.avatarUrl,
                      ),
                    ),
                  );
                },
                icon: Icon(Icons.call_outlined, color: Colors.white),
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CallPage(
                        name: widget.name,
                        phone: widget.phone,
                        avatarUrl: widget.avatarUrl,
                      ),
                    ),
                  );
                },
                icon: Icon(Icons.videocam_outlined, color: Colors.white),
              ),
            ],
          ),
        ],
        backgroundColor: Color(0xff1E293B),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.all(10),
              itemCount: psn.length,
              itemBuilder: (context, i) {
                return Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 5),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Color(0xff1E293B),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      psn[i],
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                );
              },
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            color: Color(0xff1E293B),
            child: Row(
              children: [
                Icon(Icons.add, color: Colors.white),
                SizedBox(width: 8),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: TextField(
                      controller: _controller,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 10,
                        ),
                      ),
                      onSubmitted: (_) => _kirimpesan(),
                    ),
                  ),
                ),
                SizedBox(width: 8),
                Icon(Icons.camera_alt_outlined, color: Colors.white),
                SizedBox(width: 8),
                Icon(Icons.mic_none_outlined, color: Colors.white),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
