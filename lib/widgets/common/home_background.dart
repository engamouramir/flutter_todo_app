import 'package:flutter/material.dart';
import 'package:flutter_todo_app/constants/app_colors.dart';

class HomeBackground extends StatelessWidget {
  final Widget child;

  const HomeBackground({super.key, required this.child});

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
              color: AppColors.homeSapeColor.withValues(alpha: 0.6),
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
              color: AppColors.homeSapeColor.withValues(alpha: 0.6),
              shape: BoxShape.circle,
            ),
          ),
        ),
        ClipPath(
          clipper: HomeShapeClipper(),
          child: Container(
            height: 270,
            width: double.infinity,
            decoration: BoxDecoration(
              color: AppColors.homeSapeColor.withValues(alpha: 0.8),
            ),
          ),
        ),

        Positioned(
          top: 60,
          left: 0,
          right: 0,
          child: Center(
            child: Column(
              children: [
                CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage("assets/images/amir.jpg"),
                ),
                const SizedBox(height: 15),
                Text(
                  "Welcome Amir",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ],
            ),
          ),
        ),

        child,
      ],
    );
  }
}

class HomeShapeClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height - 20);
    path.lineTo(size.width * 0.5, size.height);
    path.lineTo(size.width, size.height - 20);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
