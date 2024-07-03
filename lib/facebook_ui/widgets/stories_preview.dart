import 'package:facebook/facebook_ui/widgets/avatar.dart';
import 'package:facebook/models/story.dart';
import 'package:flutter/material.dart';

const imagePath = 'assets/wallpapers/';
const avatarPath = 'assets/users/';

final List<Story> _stories = [
  Story(
    image: '1.jpeg',
    username: 'Juan Perez',
    avatar: '1.jpg',
  ),
  Story(
    image: '2.jpeg',
    username: 'Juan Perez',
    avatar: '2.jpg',
  ),
  Story(
    image: '3.jpeg',
    username: 'Juan Perez',
    avatar: '3.jpg',
  ),
  Story(
    image: '4.jpeg',
    username: 'Juan Perez',
    avatar: '4.jpg',
  ),
  Story(
    image: '5.jpeg',
    username: 'Juan Perez',
    avatar: '5.jpg',
  ),
];

class StoriesPreview extends StatelessWidget {
  const StoriesPreview({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 168,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          final story = _stories[index];
          return StoryPreview(
            story: story,
            index: index,
          );
        },
        itemCount: _stories.length,
      ),
    );
  }
}

class StoryPreview extends StatelessWidget {
  const StoryPreview({
    super.key,
    required this.story,
    required this.index,
  });

  final Story story;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(
            left: index == 0 ? 12 : 6,
            right: index == _stories.length - 1 ? 12 : 6,
          ),
          width: 80,
          height: 140,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Container(
                width: 80,
                height: 124,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage(
                      '$imagePath${story.image}',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                child: Avatar(
                  size: 40,
                  asset: '$avatarPath${story.avatar}',
                  border: 2,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Center(
            child: Text(
              story.username,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    );
  }
}
