import 'package:facebook/facebook_ui/widgets/circle_button.dart';
import 'package:facebook/icons/custom_facebook_icons.dart';
import 'package:flutter/material.dart';

class QuickActions extends StatelessWidget {
  const QuickActions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const FittedBox(
      fit: BoxFit.scaleDown,
      alignment: Alignment.centerLeft,
      child: Row(
        children: [
          _QuickActionButton(
            text: 'Gallery',
            icon: CustomFacebookIcons.photos,
            mainColor: Color(0xff92be87),
          ),
          SizedBox(width: 16),
          _QuickActionButton(
            text: 'Tag friends',
            icon: CustomFacebookIcons.user_friends,
            mainColor: Color(0xff2880d4),
          ),
          SizedBox(width: 16),
          _QuickActionButton(
            text: 'Live',
            icon: CustomFacebookIcons.video_camera,
            mainColor: Color(0xfffb7171),
          ),
        ],
      ),
    );
  }
}

class _QuickActionButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final Color mainColor;

  const _QuickActionButton({
    super.key,
    required this.text,
    required this.icon,
    required this.mainColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          32,
        ),
        color: mainColor.withOpacity(0.2),
      ),
      child: Row(
        children: [
          CircleButton(
            backgroundColor: mainColor.withOpacity(0.8),
            icon: icon,
            color: Colors.white,
          ),
          const SizedBox(
            width: 16,
          ),
          Text(
            text,
            style: TextStyle(
              color: mainColor,
            ),
          ),
        ],
      ),
    );
  }
}
