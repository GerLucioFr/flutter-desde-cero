import 'package:facebook/facebook_ui/widgets/avatar.dart';
import 'package:facebook/models/post.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:timeago/timeago.dart' as timeago;

class PostItem extends StatelessWidget {
  const PostItem({
    super.key,
    required this.post,
  });

  final Post post;

  String getEmojiImage(Reaction reaction) {
    const emojisPath = 'assets/emojis/';

    switch (reaction) {
      case Reaction.angry:
        return '${emojisPath}angry.svg';
      case Reaction.love:
        return '${emojisPath}heart.svg';
      case Reaction.haha:
        return '${emojisPath}laughing.svg';
      case Reaction.like:
        return '${emojisPath}like.svg';
      case Reaction.sad:
        return '${emojisPath}sad.svg';
      case Reaction.wow:
        return '${emojisPath}shocked.svg';
    }
  }

  String formatNumbers(int num) {
    if (num < 1000) {
      return num.toString();
    } else if (num < 1000000) {
      return '${(num / 1000).toStringAsFixed(1)}K';
    }

    return '${(num / 1000000).toStringAsFixed(1)}M';
  }

  @override
  Widget build(BuildContext context) {
    const horizontalPadding = EdgeInsets.symmetric(horizontal: 16, vertical: 8);
    const reactions = Reaction.values;

    return Container(
      color: Colors.white,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        vertical: 8,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: horizontalPadding,
            child: Row(
              children: [
                Avatar(
                  size: 40,
                  asset: post.user.avatar,
                ),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  post.user.username,
                  overflow: TextOverflow.ellipsis,
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    timeago.format(
                      post.createdAt,
                    ),
                  ),
                ),
              ],
            ),
          ),
          AspectRatio(
            aspectRatio: 16 / 9,
            child: Image.asset(
              post.image,
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: horizontalPadding.copyWith(top: 16),
            child: Text(
              post.title,
            ),
          ),
          Padding(
            padding: horizontalPadding,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    ...List.generate(
                      reactions.length,
                      (index) {
                        final isActive = post.reaction == reactions[index];

                        return Padding(
                          padding: const EdgeInsets.only(
                            right: 4,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                getEmojiImage(
                                  reactions[index],
                                ),
                                width: 20,
                                height: 20,
                              ),
                              const SizedBox(
                                height: 2,
                              ),
                              Icon(
                                Icons.circle,
                                color: isActive
                                    ? Colors.redAccent
                                    : Colors.transparent,
                                size: 6,
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ],
                ),
                Flexible(
                  child: FittedBox(
                    child: Row(
                      children: [
                        Text('${formatNumbers(post.commentsCount)} Comments'),
                        const SizedBox(
                          width: 4,
                        ),
                        Text('${formatNumbers(post.sharesCount)} Shares'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
