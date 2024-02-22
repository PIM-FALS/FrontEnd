
import 'package:flutter/material.dart';

class TermsAndConditionsCheckBox extends StatelessWidget {
  const TermsAndConditionsCheckBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 20,
          height: 20,
          child: Checkbox(value: false, onChanged: (value) {}),
        ),
        const SizedBox(width: 8.0),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'I agree to ',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              TextSpan(
                text: 'Privacy Policy',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      foreground: Paint()
                        ..shader = LinearGradient(
                          colors: [
                            Color(0xFFFF8086),
                            Color(0xFF74069A),
                          ],
                        ).createShader(
                          Rect.fromLTWH(0.0, 0.0, 200.0, 70.0),
                        ),
                    ),
              ),
              TextSpan(
                text: ' ${'and'} ',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              TextSpan(
                text: 'Terms of Use',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      foreground: Paint()
                        ..shader = LinearGradient(
                          colors: [
                            Color(0xFFFF8086),
                            Color(0xFF74069A),
                          ],
                        ).createShader(
                          Rect.fromLTWH(0.0, 0.0, 200.0, 70.0),
                        ),
                    ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
