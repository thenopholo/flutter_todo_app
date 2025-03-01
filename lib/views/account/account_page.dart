import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../core/ui/theme/app_colors.dart';
import '../../core/ui/theme/app_theme.dart';
import 'widgets/profile_options.dart';
import 'widgets/user_avatar.dart';
import 'widgets/user_info.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    final topPadding = MediaQuery.of(context).padding.top;

    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: topPadding * 1.5,
            ),
            Column(
              spacing: 16,
              children: [
                Text(
                  'Profile',
                  style: TextStyle(
                    fontSize:
                        Theme.of(context).textTheme.displayLarge?.fontSize,
                    fontWeight: FontWeight.w700,
                    color: AppColors.tertiaryColor,
                  ),
                ),
                UserAvatar(),
                UserInfo(),
                ProfileOptions(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
