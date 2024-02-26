import 'package:flutter/cupertino.dart';

import '../../../../utils/constants/colors.dart';
import '../curved_edges/curved_edges_widget.dart';
import 'circular_container.dart';

class TPrimaryHeaderContainer extends StatelessWidget {
  const TPrimaryHeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TCurvedEdgesWidget(
      child: Container(
        color: TColors.gradientStart,
        padding: const EdgeInsets.all(0),
        child: SizedBox(
          height: 400,
          child: Stack(
            children: [
              Positioned(
                top: -150,
                right: -250,
                child: TCircularContainer(
                    backgroundColor: TColors.gradientEnd.withOpacity(0.1)),
              ),
              Positioned(
                top: 100,
                right: -300,
                child: TCircularContainer(
                    backgroundColor: TColors.gradientEnd.withOpacity(0.1)),
              ),
              Positioned(
                top: -200,
                right: 300,
                child: TCircularContainer(
                    backgroundColor: TColors.gradientEnd.withOpacity(0.3)),
              ),
              child,
            ],
          ),
        ),
      ),
    );
  }
}
