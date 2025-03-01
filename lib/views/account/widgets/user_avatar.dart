import 'package:flutter/material.dart';

import '../../../core/ui/theme/app_colors.dart';

class UserAvatar extends StatelessWidget {
  const UserAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(500),
            border: Border.all(
              color: AppColors.primaryColor,
              width: 0.5,
            ),
          ),
          child: Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(500),
              border: Border.all(
                color: AppColors.primaryColor,
                width: 0.5,
              ),
            ),
            child: CircleAvatar(
              backgroundColor: Colors.grey,
              radius: 50,
            ),
          ),
        ),
        Positioned(
          right: 35,
          bottom: 30,
          child: Container(
            width: 32,
            height: 32,
            decoration: BoxDecoration(
              color: AppColors.primaryColor,
              borderRadius: BorderRadius.circular(50),
            ),
            child: ImageIcon(
              color: Colors.white,
              AssetImage(
                'assets/icons/outline/edit_outline.png',
              ),
            ),
          ),
        ),
      ],
    );
  }
}
