import 'package:flutter/material.dart';
import 'package:nexxora/services/group_service.dart';

class GroupWidget extends StatelessWidget {
  final String name;
  final String lastMessage;
  final String time;
  final String avatarUrl;
  const GroupWidget({
    super.key,
    required this.name,
    required this.lastMessage,
    required this.time,
    required this.avatarUrl,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: gm.length,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, i) {
        return Container(
          margin: EdgeInsets.symmetric(horizontal: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color(0xff1E293B),
          ),
          child: ListTile(
            contentPadding: EdgeInsets.symmetric(vertical: 7),
            leading: CircleAvatar(
              radius: 32,
              backgroundImage: AssetImage(gm[i].avatarUrl),
            ),
            title: Text(
              gm[i].name,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              gm[i].lastMessage,
              style: TextStyle(color: Color(0xff94A3B8)),
            ),
            trailing: Padding(
              padding: EdgeInsets.only(right: 18, bottom: 32),
              child: Text(
                gm[i].time,
                style: TextStyle(color: Color(0xff94A3B8), fontSize: 12),
              ),
            ),

            onTap: () {
              Text("Buka chat dengan ${gm[i].name}");
            },
          ),
        );
      },
      separatorBuilder: (context, index) => Column(
        children: [
          Divider(color: Colors.white, thickness: 1, indent: 60, endIndent: 95),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
