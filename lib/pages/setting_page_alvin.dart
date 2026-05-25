import 'package:flutter/material.dart';
import 'package:nexxora/services/your_profile_service_alvin.dart';

class SettingPage extends StatefulWidget {
  final String name;
  final String bio;
  final String avatar;
  final String phone;
  const SettingPage({
    super.key,
    required this.name,
    required this.bio,
    required this.avatar,
    required this.phone,
  });

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
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
              "Setting",
              style: TextStyle(color: Colors.white, fontSize: 35),
            ),
          ),
        ),
        backgroundColor: Color(0xff0F172A),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 20,),
            Card(
              color: Color(0xff1E293B),
              child: Row(
                children: [
                  Icon(Icons.search, color: Colors.white,),
                  SizedBox(width: 5),
                  Text("Search", style: TextStyle(color: Colors.white),),
                ],
              ),
            ),
            Card(
              color: Color(0xff1E293B),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 35,
                    backgroundImage: AssetImage(yp[0].avatar),
                  ),
                  SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(yp[0].name, style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
                      Text(yp[0].bio, style: TextStyle(color: Color(0xff94A3B8)),),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
