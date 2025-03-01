import 'package:flutter/material.dart';

import '../../../core/ui/theme/app_colors.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 4,
      children: [
        Text(
          'User Name',
          style: TextStyle(
            fontSize: Theme.of(context).textTheme.titleLarge?.fontSize,
            fontWeight: FontWeight.w700,
            color: AppColors.tertiaryColor,
          ),
        ),
        Text(
          '@user',
          style: TextStyle(
            fontSize: Theme.of(context).textTheme.bodySmall?.fontSize,
            fontWeight: FontWeight.w700,
            color: AppColors.secondaryColor,
          ),
        ),
        Container(
          width: 98,
          height: 34,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: const [
              BoxShadow(
                blurRadius: 7,
                color: Colors.black12,
                offset: Offset(7, 5),
              )
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 8,
            children: [
              Container(
                width: 9,
                height: 9,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              Text('Online')
            ],
          ),
        )
      ],
    );
  }
}
