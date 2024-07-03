import 'package:facebook/facebook_ui/widgets/post_item.dart';
import 'package:facebook/models/post.dart';
import 'package:flutter/material.dart';

class PostList extends StatelessWidget {
  const PostList({super.key, required this.posts});

  final List<Post> posts;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffebebeb),
      child: ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (_, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 4),
            child: PostItem(post: posts[index]),
          );
        },
        itemCount: posts.length,
      ),
    );
  }
}
