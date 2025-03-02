import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../core/ui/theme/app_colors.dart';
import 'widgets/task_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    bool isChecked = false;
    final topPadding = MediaQuery.of(context).padding.top;
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          spacing: 20,
          children: [
            SizedBox(
              height: topPadding,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Good Morning, Rodrigo!',
                      style: TextStyle(
                        fontSize:
                            Theme.of(context).textTheme.bodySmall?.fontSize,
                      ),
                    ),
                    Text(
                      'Let\'s Start Your Tasks',
                      style: TextStyle(
                        fontSize:
                            Theme.of(context).textTheme.bodyLarge?.fontSize,
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: ImageIcon(
                      AssetImage(
                          'assets/icons/outline/notification_outline.png'),
                    ),
                  ),
                ),
              ],
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Serch for a task',
                prefixIcon: IconButton(
                  onPressed: () {},
                  icon: Icon(CupertinoIcons.search),
                ),
                filled: true,
                fillColor: Colors.grey[200],
                focusColor: AppColors.primaryColor,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Today\'s Taks',
                  style: TextStyle(
                    fontSize: Theme.of(context).textTheme.bodyLarge?.fontSize,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text('See More'),
                ),
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  spacing: 12,
                  children: [
                    TaskCard(),
                    TaskCard(),
                    TaskCard(),
                    TaskCard(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
