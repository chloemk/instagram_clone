import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

enum AvatarType {
  STORYAVATAR,
  MYSTORYAVATAR,
  POSTAVATAR,
}

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
    this.size = 65,
  }) : super(key: key);

  Widget storyAvatarWidget() {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 5,
      ),
      padding: const EdgeInsets.all(2),
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
      child: myStoryAvatarWidget(),
    );
  }

  Widget myStoryAvatarWidget() {
    return Container(
      padding: const EdgeInsets.all(2),
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(size!),
        child: SizedBox(
          width: size,
          height: size,
          child: CachedNetworkImage(
            imageUrl: thumbPath,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  Widget postAvatarWidget() {
    return Row(
      children: [
        storyAvatarWidget(),
        Text(
          nickname ?? '',
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    switch (type) {
      case AvatarType.STORYAVATAR:
        return storyAvatarWidget();
      case AvatarType.MYSTORYAVATAR:
        return myStoryAvatarWidget();
      case AvatarType.POSTAVATAR:
        return postAvatarWidget();
    }
  }
}
