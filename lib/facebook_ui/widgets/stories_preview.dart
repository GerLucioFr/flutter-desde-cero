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
          return Container(
            width: 64,
            height: double.infinity,
            color: Colors.grey,
          );
        },
        itemCount: _stories.length,
      ),
    );
  }
}
