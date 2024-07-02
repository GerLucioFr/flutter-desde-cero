import 'package:facebook/facebook_ui/widgets/avatar.dart';
import 'package:flutter/material.dart';

class PostPlaceholder extends StatelessWidget {
  const PostPlaceholder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Avatar(
          size: 56,
          asset: 'assets/users/3.jpg',
        ),
        SizedBox(
          width: 20,
        ),
        Flexible(
          child: Text(
            'What´s on your mind?',
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
        ),
      ],
    );
  }
}
