import 'package:facebook/facebook_ui/widgets/circle_button.dart';
import 'package:facebook/facebook_ui/widgets/post_placeholder.dart';
import 'package:facebook/facebook_ui/widgets/quick_actions.dart';
import 'package:facebook/facebook_ui/widgets/stories_preview.dart';
import 'package:facebook/icons/custom_facebook_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FacebookUI extends StatelessWidget {
  const FacebookUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leadingWidth: 144,
        backgroundColor: Colors.white,
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        leading: SvgPicture.asset(
          'assets/logos/facebook.svg',
          colorFilter:
              const ColorFilter.mode(Colors.blueAccent, BlendMode.srcIn),
        ),
        actions: const [
          CircleButton(
            backgroundColor: Color(0xffbfbfbf),
            icon: CustomFacebookIcons.search,
            color: Colors.white,
          ),
          SizedBox(
            width: 16,
          ),
          CircleButton(
            backgroundColor: Color(0xfffe7574),
            icon: CustomFacebookIcons.bell,
            color: Colors.white,
          ),
          SizedBox(
            width: 16,
          ),
          CircleButton(
            backgroundColor: Color(0xff7bbaff),
            icon: CustomFacebookIcons.user_friends,
            color: Colors.white,
            showBadge: true,
          ),
          SizedBox(
            width: 16,
          ),
          CircleButton(
            backgroundColor: Color(0xff1c86e4),
            icon: CustomFacebookIcons.messenger,
            color: Colors.white,
          ),
          SizedBox(
            width: 16,
          ),
        ],
      ),
      body: ListView(
        children: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: PostPlaceholder(),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: QuickActions(),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 12),
            child: StoriesPreview(),
          ),
        ],
      ),
    );
  }
}
