import 'package:flutter/material.dart';
import 'package:instagram_clone/src/components/avatar_widget.dart';
import 'package:instagram_clone/src/components/image_data.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  Widget _myStory() {
    return Stack(
      children: [
        AvatarWidget(
          type: AvatarType.MYSTORYAVATAR,
          thumbPath:
              'https://backlightblog.com/images/2020/10/blur-photo-background-header.jpg',
          size: 70,
        ),
        // 플러스 버튼
        Positioned(
          bottom: 0,
          right: 0,
          child: Container(
            padding: const EdgeInsets.all(2),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30), color: Colors.white),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Container(
                color: Colors.blue,
                height: 27,
                width: 27,
                child: const Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 20,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget _storyBoardList() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
          // TODO : generate의 첫번째 인자 length는 스토리의 개수 만큼 생성하면 된다.
          children: [
            const SizedBox(
              width: 20,
            ),
            _myStory(),
            const SizedBox(
              width: 5,
            ),
            // ...는 리스트 배열을 나열한다.
            ...List.generate(
              100,
              (index) => AvatarWidget(
                type: AvatarType.STORYAVATAR,
                thumbPath:
                    'https://d5nunyagcicgy.cloudfront.net/external_assets/hero_examples/hair_beach_v391182663/original.jpeg',
              ),
            ),
          ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          titleSpacing: 0,
          elevation: 0,
          title: Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: ImageData(
              IconsPath.logo,
              width: 300,
            ),
          ),
          actions: [
            GestureDetector(
              onTap: () {},
              child: Container(
                  alignment: Alignment.centerRight,
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: SizedBox(
                    height: 40,
                    child: ImageData(
                      IconsPath.directMessage,
                      width: 65,
                    ),
                  )),
            ),
          ],
        ),
        body: ListView(
          children: [
            _storyBoardList(),
            // _postList(),
          ],
        ));
  }
}
