

import 'package:flutter/material.dart';

class SectionHeading extends StatelessWidget {
  const SectionHeading({
    super.key,
    this.textColor,
    this.showActionButton = true,
    required this.title,
    this.buttonTitle = 'View All',
    this.onPressed,
  });

  final Color? textColor;
  final bool showActionButton;
  final String title, buttonTitle;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style:
          Theme.of(context).textTheme.titleLarge!.apply(color: textColor),
        ),
        if (showActionButton)
          TextButton(
            onPressed: onPressed,
            child: Text(
              buttonTitle,
              style: Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .apply(color: textColor),
            ),
          ),
      ],
    );
  }
}
