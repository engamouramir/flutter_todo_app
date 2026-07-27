import 'package:flutter/material.dart';
import 'package:flutter_todo_app/constants/app_colors.dart';

class AppBackground extends StatelessWidget {
  final Widget child;

  const AppBackground ({
    super.key,
    required this.child,
    });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: -120,
          left: -80,
          child: Container(
            width: 300,
            height: 200,
            decoration: BoxDecoration(
              color: AppColors.topCircleColor.withValues(alpha: 0.6),
              shape: BoxShape.circle,
            ),
          ),
        ),
        Positioned(
          top: -100,
          left: -120,
          child: Container(
            width: 200,
            height: 300,
            decoration: BoxDecoration(
              color: AppColors.topCircleColor.withValues(alpha: 0.6),
              shape: BoxShape.circle,
            ),
          ) 
        ),
        child,
      ],
    );
  }
}