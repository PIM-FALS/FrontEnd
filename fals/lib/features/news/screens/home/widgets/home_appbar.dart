import 'package:flutter/cupertino.dart';

import '../../../../../common/widgets/appbar/appbar.dart';
import '../../../../../common/widgets/notifications/notifications_icon.dart';

class THomeAppBar extends StatelessWidget {
  const THomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TAppBar(
      title: ShaderMask(
        shaderCallback: (Rect bounds) {
          return LinearGradient(
            colors: [
              Color(0xFF74069A),
              Color(0xFFFF8086),
            ],
            stops: [0.3, 0.7],
          ).createShader(bounds);
        },
        child: Text(
          'FALS',
          style: TextStyle(
            fontSize: 50,
            fontFamily: 'MontserratAlt1',
          ),
        ),
      ),
      actions: [
        NotificationsIcon(onPressed: () {  },)
      ],
    );
  }
}

