import 'package:flutter/material.dart';

enum AvatarType { STORYAVATAR, TYPE2, TYPE3 }

class AvatarWidget extends StatelessWidget {
  bool? hasStory;
  String thumbPath;
  String? nickname;
  AvatarType type;
  double? size;

  AvatarWidget({
    Key? key,
    required this.type,
    required this.thumbPath,
    this.hasStory,
    this.nickname,
    this.size,
  }) : super(key: key);

  Widget storyAvatarWidget() {
    return Container(
      width: 65,
      height: 65,
      margin: const EdgeInsets.symmetric(
        horizontal: 5,
      ),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Colors.purple,
            Colors.orange,
          ],
        ),
        shape: BoxShape.circle,
      ),
      child: ,
    );
  }

  @override
  Widget build(BuildContext context) {
    switch (type) {
      case AvatarType.STORYAVATAR:
        return storyAvatarWidget();
        break;
      case AvatarType.TYPE2:
      case AvatarType.TYPE3:
        return Container();
    }
  }
}
