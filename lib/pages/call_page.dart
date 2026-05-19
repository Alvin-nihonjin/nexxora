import 'package:flutter/material.dart';
import 'package:nexxora/pages/home_page.dart';
import 'package:nexxora/pages/menu_page.dart';
import 'package:nexxora/services/chats_service.dart';

class CallPage extends StatefulWidget {
  final String name;
  final String phone;
  final String avatarUrl;
  const CallPage({
    super.key,
    required this.name,
    required this.phone,
    required this.avatarUrl,
  });

  @override
  State<CallPage> createState() => _CallPageState();
}

class _CallPageState extends State<CallPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0F172A),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 35),
            child: Column(
              children: [
                Text("calling...", style: TextStyle(color: Colors.white)),
                SizedBox(height: 60),
                Text(widget.name, style: TextStyle(color: Colors.white)),
                Text(widget.phone, style: TextStyle(color: Colors.white)),
                Container(
                  height: 202,
                  width: 202,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(widget.avatarUrl)),
                    borderRadius: BorderRadius.circular(27),
                  ),
                ),
                SizedBox(height: 20),
                Icon(Icons.volume_up_outlined, color: Colors.white, size: 110),
                Padding(padding: EdgeInsetsGeometry.all(100)),
                SizedBox(
                  child: Row(
                    children: [
                      Container(
                        width: 65,
                        height: 65,
                        decoration: BoxDecoration(
                          color: Colors.purple,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomePage(),
                              ),
                            );
                          },
                          icon: Icon(
                            Icons.videocam_outlined,
                            color: Colors.white,
                            size: 50,
                          ),
                        ),
                      ),
                      SizedBox(width: 50),
                      Container(
                        width: 65,
                        height: 65,
                        decoration: BoxDecoration(
                          color: Colors.purple,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomePage(),
                              ),
                            );
                          },
                          icon: Icon(
                            Icons.mic_none_outlined,
                            color: Colors.white,size: 50,

                          ),
                        ),
                      ),
                      SizedBox(width: 50),
                      Container(
                        width: 65,
                        height: 65,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MenuPage(),
                              ),
                            );
                          },
                          icon: Icon(Icons.phone_outlined, color: Colors.white,size: 50,),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
