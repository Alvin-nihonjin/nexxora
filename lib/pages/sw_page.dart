import 'package:flutter/material.dart';

class StoryPage extends StatefulWidget {
  final String name;
  final String imgUrl;
  const StoryPage({super.key, required this.name, required this.imgUrl});

  @override
  State<StoryPage> createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              widget.imgUrl,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 50,
            left: 20,
            right: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 18,
                      backgroundImage: AssetImage("assets/profile.jpg"),
                    ),
                    SizedBox(width: 10),
                    Text(
                      widget.name,
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ],
                ),
              ],
            ),
          ),

          Positioned(
            bottom: 40,
            left: 20,
            right: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                IconButton(
                  icon: Icon(Icons.chat_bubble_outline,
                      color: Colors.white, size: 28),
                  onPressed: () {},
                ),


              ],
            ),
          ),
        ],
      ),
    );
  }
}
