class CallModel {
  final String name;
  final String avatarUrl;
  final String time;
  final String phone;
  final bool isMissed;
  final bool isVideoCall;

  CallModel({
    required this.name,
    required this.avatarUrl,
    required this.time,
    required this.phone,
    required this.isMissed,
    required this.isVideoCall,
  });
}
