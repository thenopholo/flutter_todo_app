import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/ui/theme/app_colors.dart';
import 'option_line.dart';

class ProfileOptions extends StatelessWidget {
  const ProfileOptions({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Container(
          width: screenWidth * 0.85,
          height: screenHeight * 0.06,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
            boxShadow: const [
              BoxShadow(
                blurRadius: 7,
                color: Colors.black12,
                offset: Offset(7, 5),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 22),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Set your status',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: AppColors.tertiaryColor,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 4,
                  children: [
                    Container(
                      width: 9,
                      height: 9,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    Text('Online'),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(CupertinoIcons.chevron_forward)),
                  ],
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: screenHeight * 0.04,
        ),
        Column(
          spacing: 16,
          children: [
            optionLine(
              screenWidth: screenWidth,
              optionName: 'Settings',
              optionIcon: 'assets/icons/outline/config_outline.png',
              iconColor: AppColors.primaryColor,
              optionColor: AppColors.fourthColor,
            ),
            optionLine(
              screenWidth: screenWidth,
              optionName: 'Help Center',
              optionIcon: 'assets/icons/outline/faq_outline.png',
              iconColor: AppColors.primaryColor,
              optionColor: AppColors.fourthColor,
            ),
            optionLine(
              screenWidth: screenWidth,
              optionName: 'Log Out',
              optionIcon: 'assets/icons/outline/login.png',
              iconColor: Colors.red,
              optionColor: Colors.red.shade100,
            ),
          ],
        ),
      ],
    );
  }
}
