import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';

class NotificationsIcon extends StatelessWidget {
  const NotificationsIcon({
    super.key, this.iconColor, required this.onPressed,
  });
  final Color? iconColor;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
          onPressed: onPressed,
          icon: Icon(Icons.notifications_outlined,
              size: 30, color: iconColor),
        ),
        Positioned(
          right: 3,
          top: 3,
          child: Container(
            width: 15,
            height: 15,
            decoration: BoxDecoration(
              color: Colors.red.withOpacity(0.8),
              borderRadius: BorderRadius.circular(100),
            ),

            child: Center(
              child: Text(
                '2',
                style: Theme.of(context).textTheme.labelLarge!.apply(color: TColors.white, fontSizeFactor: 0.8),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
