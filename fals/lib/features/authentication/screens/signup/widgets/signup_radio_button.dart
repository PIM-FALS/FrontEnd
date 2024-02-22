import 'package:flutter/material.dart';

class GradientRadio<T> extends StatelessWidget {
  final T value;
  final T? groupValue;
  final ValueChanged<T?> onChanged;

  GradientRadio({
    required this.value,
    required this.groupValue,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onChanged(value);
      },
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          ShaderMask(
            shaderCallback: (Rect bounds) {
              return LinearGradient(
                colors: [
                  Color(0xFF74069A),
                  Color(0xFFFF8086),
                ],
              ).createShader(bounds);
            },
            child: Radio<T>(
              value: value,
              groupValue: groupValue,
              onChanged: (T? value) {
                onChanged(value);
              },
            ),
          ),
          const SizedBox(width: 4), // Adjust the spacing between radio and text
          Text(
            value == 'male' ? 'Male' : 'Female',
          ),
        ],
      ),
    );
  }
}

