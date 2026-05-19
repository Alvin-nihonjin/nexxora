import 'package:flutter/material.dart';
import 'package:nexxora/pages/sw_page.dart';
import 'package:nexxora/services/story_services.dart';

class StoryModel {
  final String name;
  final String imgUrl;
  bool seen;

  StoryModel({
    required this.name,
    required this.imgUrl,
    this.seen = false
  });
}

class StoryWidget extends StatefulWidget {
  const StoryWidget({super.key});

  @override
  State<StoryWidget> createState() => _StoryWidgetState();
}

class _StoryWidgetState extends State<StoryWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: sl.length,
        itemBuilder: (context, index) {
          final story = sl[index];
          return GestureDetector(
            onTap: () { Navigator.push(context, MaterialPageRoute(builder: (context) => StoryPage(name: sl[index].name, imgUrl: sl[index].imageUrl),));
              setState(() {
                sl[index].seen = true; // ubah jadi sudah dilihat
              });
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: story.seen ? Colors.grey : Colors.green,
                        width: 3,
                      ),
                    ),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(story.imageUrl),
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    story.name,
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
