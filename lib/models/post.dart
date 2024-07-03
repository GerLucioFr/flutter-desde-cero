class Post {
  final String title;
  final DateTime createdAt;
  final String image;
  final int commentsCount;
  final int sharesCount;
  final Reaction reaction;
  final User user;

  Post({
    required this.title,
    required this.createdAt,
    required this.image,
    required this.commentsCount,
    required this.sharesCount,
    required this.reaction,
    required this.user,
  });
}

class User {
  final String avatar;
  final String username;

  User({
    required this.avatar,
    required this.username,
  });
}

enum Reaction {
  angry,
  love,
  haha,
  like,
  sad,
  wow,
}
