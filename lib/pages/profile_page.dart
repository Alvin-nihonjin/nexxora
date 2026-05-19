import 'package:flutter/material.dart';
import 'package:nexxora/pages/call_page.dart';
import 'package:nexxora/pages/videocall_page.dart';
import 'package:nexxora/services/chats_service.dart';

class ProfilePage extends StatelessWidget {
  final String name;
  final String phone;
  final String avatarUrl;
  final String bio;
  final String date;

  const ProfilePage({
    super.key,
    required this.name,
    required this.phone,
    required this.avatarUrl,
    required this.bio,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0F172A),
      appBar: AppBar(
        flexibleSpace: Align(
          alignment: Alignment.center,
          child: Padding(
            padding: EdgeInsets.only(top: 20),
            child: Text(
              "Contact Info njirr",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
        ),
        backgroundColor: Color(0xff0F172A),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 35,
                  backgroundImage: AssetImage(avatarUrl),
                ),
                SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(phone, style: TextStyle(color: Color(0xff94A3B8))),
                  ],
                ),
                Spacer(),
                ElevatedButton(onPressed: () {}, child: Text("Edit")),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => CallPage(name: name, phone: phone, avatarUrl: avatarUrl)),
                        );
                      },
                      icon: Icon(Icons.call, color: Colors.white),
                    ),
                    Text("Call", style: TextStyle(color: Colors.white)),
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => VideocallPage(),
                          ),
                        );
                      },
                      icon: Icon(Icons.videocam, color: Colors.white),
                    ),
                    Text("Video Call", style: TextStyle(color: Colors.white)),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Color(0xff1E293B),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(bio, style: TextStyle(color: Colors.white)),
                  Text(date, style: TextStyle(color: Color(0xff94A3B8))),
                ],
              ),
            ),
            Spacer(),
            Column(
              children: [
                TextButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: Text("Block $name?"),
                        actions: [
                          TextButton(
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                  title: Text("Done blocked $name"),
                                ),
                              );
                            },
                            child: Text("Yes"),
                          ),
                          TextButton(
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                  title: Text("Cancel block $name"),
                                ),
                              );
                            },
                            child: Text("No"),
                          ),
                        ],
                      ),
                    );
                  },
                  child: Text(
                    "Block $name",
                    style: TextStyle(color: Colors.red),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: Text("Block $name?"),
                        actions: [
                          TextButton(
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                  title: Text("Done blocked $name"),
                                ),
                              );
                            },
                            child: Text("Yes"),
                          ),
                          TextButton(
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                  title: Text("Cancel block $name"),
                                ),
                              );
                            },
                            child: Text("No"),
                          ),
                        ],
                      ),
                    );
                  },
                  child: Text(
                    "Block $name",
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
