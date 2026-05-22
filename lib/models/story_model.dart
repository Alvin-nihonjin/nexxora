class StoryModel {
  final String name;
  final String imageUrl;
  final String vdsw;
  bool seen;
  StoryModel({
    required this.name,
    required this.imageUrl,
    required this.vdsw,
    this.seen = false,
  });
}
