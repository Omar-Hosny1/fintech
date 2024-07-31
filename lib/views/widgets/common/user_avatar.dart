import 'package:flutter/material.dart';

// ignore: must_be_immutable
class UserAvatar extends StatelessWidget {
  UserAvatar({super.key, this.height, this.width});
  double? width;
  double? height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? 40,
      height: height ?? 40,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(width ?? 20),
      ),
      child: Image.asset(
        "assets/images/profile-picture.jpg",
        fit: BoxFit.cover,
      ),
    );
  }
}
