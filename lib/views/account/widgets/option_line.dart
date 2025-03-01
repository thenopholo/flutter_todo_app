
import 'package:flutter/material.dart';

import '../../../core/ui/theme/app_colors.dart';

class optionLine extends StatelessWidget {
  final double screenWidth;
  final String optionName;
  final String optionIcon;
  final Color iconColor;
  final Color optionColor;

  const optionLine({
    super.key,
    required this.screenWidth,
    required this.optionName,
    required this.optionIcon,
    required this.iconColor,
    required this.optionColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 42.0),
      child: Column(
        children: [
          Row(
            spacing: 15,
            children: [
              Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  color: optionColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ImageIcon(
                  color: iconColor,
                  AssetImage(optionIcon),
                ),
              ),
              Text(
                optionName,
                style: TextStyle(
                  fontSize: Theme.of(context).textTheme.bodyLarge?.fontSize,
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 14),
            width: screenWidth * 0.85,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: AppColors.tertiaryColor, width: 1.0),
              ),
            ),
          )
        ],
      ),
    );
  }
}
