import 'package:flutter/material.dart';

import '../../../core/ui/theme/app_colors.dart';

class TaskCard extends StatefulWidget {
  const TaskCard({super.key});

  @override
  State<TaskCard> createState() => _TaskCardState();
}

class _TaskCardState extends State<TaskCard> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: screenWidth * 0.85,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(12)),
        boxShadow: [
          BoxShadow(
            blurRadius: 7.0,
            color: Colors.black12,
            offset: Offset(7, 5),
          )
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 12,
          children: [
            Container(
              decoration: BoxDecoration(
                  color: AppColors.fourthColor,
                  borderRadius: BorderRadius.circular(30)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'UX Design',
                  style: TextStyle(
                    color: AppColors.primaryColor,
                    fontSize: Theme.of(context).textTheme.bodySmall?.fontSize,
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Design Task App',
                      style: TextStyle(
                        fontSize:
                            Theme.of(context).textTheme.bodyLarge?.fontSize,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'Got to make this beatiful for my potfolio.',
                      style: TextStyle(
                        fontSize:
                            Theme.of(context).textTheme.bodySmall?.fontSize,
                      ),
                    ),
                  ],
                ),
                Checkbox(
                  value: isChecked,
                  onChanged: (bool? newValue) {
                    setState(() {
                      isChecked = newValue!;
                    });
                  },
                  shape: CircleBorder(),
                  side: BorderSide(
                    color: AppColors.primaryColor,
                    width: 2,
                  ),
                  activeColor: AppColors.primaryColor,
                  checkColor: Colors.white,
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 14),
              width: screenWidth * 0.85,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Colors.grey, width: 1.0),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 100,
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                              color: Colors.white, width: 2), // Borda branca
                        ),
                        child: CircleAvatar(
                          radius: 12,
                          backgroundColor: Colors.grey,
                        ),
                      ),
                      Positioned(
                        left: 20,
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                                color: Colors.white, width: 2), // Borda branca
                          ),
                          child: CircleAvatar(
                            radius: 12,
                            backgroundColor: Colors.grey,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 40,
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                                color: Colors.white, width: 2), // Borda branca
                          ),
                          child: CircleAvatar(
                            radius: 12,
                            backgroundColor: Colors.grey,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Text('Today, 13:00-16:00'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
