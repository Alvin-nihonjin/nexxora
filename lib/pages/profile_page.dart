import 'package:flutter/material.dart';

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
            padding: const EdgeInsets.only(top: 20),
            child: Text(
              "Contact Info",
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
          crossAxisAlignment: CrossAxisAlignment.start,
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
                _ActionButton(icon: Icons.call, label: "Audio"),
                _ActionButton(icon: Icons.videocam, label: "Video"),
                _ActionButton(icon: Icons.search, label: "Search"),
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
            _DangerButton(text: "Block $name"),
            SizedBox(height: 10),
            _DangerButton(text: "Report $name"),
          ],
        ),
      ),
    );
  }
}

class _ActionButton extends StatelessWidget {
  final IconData icon;
  final String label;
  const _ActionButton({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: Colors.white),
        Text(label, style: TextStyle(color: Colors.white)),
      ],
    );
  }
}

class _DangerButton extends StatelessWidget {
  final String text;
  const _DangerButton({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Color(0xff1E293B),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        text,
        style: TextStyle(color: Colors.red),
        textAlign: TextAlign.center,
      ),
    );
  }
}
