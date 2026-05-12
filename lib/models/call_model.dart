class CallModel {
  final String name;
  final String avatarUrl;
  final String time;
  final bool isMissed;
  final bool isVideoCall;

  CallModel({
    required this.name,
    required this.avatarUrl,
    required this.time,
    required this.isMissed,
    required this.isVideoCall,
  });
}
