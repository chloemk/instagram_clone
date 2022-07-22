import 'package:cached_network_image/cached_network_image.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/src/components/avatar_widget.dart';
import 'package:instagram_clone/src/components/image_data.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({Key? key}) : super(key: key);

  Widget _header() {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AvatarWidget(
            type: AvatarType.POSTAVATAR,
            thumbPath:
                'https://i.pinimg.com/originals/d5/45/a2/d545a2343d19f3ce8af9e9aa52dd3fce.jpg',
            size: 40,
            nickname: 'ch_1234',
          ),
          GestureDetector(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: ImageData(
                IconsPath.postMoreIcon,
                width: 40,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _image() {
    return CachedNetworkImage(
      imageUrl:
          'https://b.zmtcdn.com/data/pictures/9/18427139/423c78712deb64a99571e78b55204b82_featured_v2.jpg',
    );
  }

  Widget _infoCount() {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              ImageData(
                IconsPath.likeOffIcon,
                width: 70,
              ),
              const SizedBox(
                width: 15,
              ),
              ImageData(
                IconsPath.replyIcon,
                width: 65,
              ),
              const SizedBox(
                width: 15,
              ),
              ImageData(
                IconsPath.directMessage,
                width: 65,
              ),
            ],
          ),
          ImageData(
            IconsPath.bookMarkOffIcon,
            width: 60,
          ),
        ],
      ),
    );
  }

  Widget _infoDescription() {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            '좋아요 150개',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          ExpandableText(
            '요즘 핫플!!\n요즘 핫플!!\n요즘 핫플!!\n요즘 핫플!!\n요즘 핫플!!\n ',
            prefixText: 'ch_1234',
            prefixStyle: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
            // TODO : 텍스트 중 #이 포함되어 있다면 그 단어를 파랑색 글자로 변경 (해시태그)
            expandText: '더보기',
            collapseText: '접기',
            linkColor: Colors.grey,
            maxLines: 3,
            expandOnTextTap: true,
            collapseOnTextTap: true,
            // TODO : 닉네임을 누르면 내 피드로 이동
            onPrefixTap: () {
              print('ch_1234 내 피드로 이동');
            },
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 20,
      ),
      child: Column(children: [
        _header(),
        const SizedBox(
          height: 10,
        ),
        _image(),
        const SizedBox(
          height: 10,
        ),
        _infoCount(),
        _infoDescription(),
        const SizedBox(
          height: 10,
        ),
        // _replyTextBtn(),
        // _dateAgo(),
      ]),
    );
  }
}
