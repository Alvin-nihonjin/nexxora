import 'package:flutter/material.dart';
import 'package:nexxora/pages/call_page_akbar.dart';
import 'package:nexxora/pages/video_call_page.dart';
import 'package:nexxora/services/call_service_alvin.dart';
import 'package:nexxora/services/chats_service_alvin.dart';

class CallWidget extends StatelessWidget {
  final String name;
  final String avatarUrl;
  final String time;
  final String phone;
  final bool isMissed;
  final bool isVideoCall;
  const CallWidget({
    super.key,
    required this.name,
    required this.avatarUrl,
    required this.time,
    required this.isMissed,
    required this.isVideoCall, required this.phone,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: cm.length,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, i) {
        final call = cm[i];
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
              backgroundImage: AssetImage(call.avatarUrl),
            ),
            title: Text(
              call.name,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Row(
              children: [
                Icon(
                  call.isMissed ? Icons.call_missed : Icons.call_received,
                  color: call.isMissed ? Colors.red : Colors.green,
                  size: 18,
                ),
                SizedBox(width: 6),
                Text(
                  call.time,
                  style: TextStyle(color: Color(0xff94A3B8), fontSize: 12),
                ),
              ],
            ),
            trailing: IconButton(
              icon: Icon(
                call.isVideoCall ? Icons.videocam_outlined : Icons.phone_outlined,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => call.isVideoCall
                        ? VideoCallPage()
                        : CallPage(
                      name: cm[i].name,
                      phone: cm[i].phone,
                      avatarUrl: cm[i].avatarUrl,
                    ),
                  ),
                );
              },
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => call.isVideoCall
                      ? VideoCallPage()
                      : CallPage(
                    name: cm[i].name,
                    phone: cm[i].phone,
                    avatarUrl: cm[i].avatarUrl,
                  ),
                ),
              );
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
