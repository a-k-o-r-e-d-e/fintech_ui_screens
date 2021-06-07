import 'package:flutter/material.dart';

class ProfilePictureWidget extends StatelessWidget {
  final double outerCircleSize;
  final double innerCircleSize;
  final Color outerCircleColor;
  final Color innerCircleColor;
  final Widget child;

  const ProfilePictureWidget({
    @required this.child,
    @required this.innerCircleSize,
    @required this.outerCircleSize,
    @required this.outerCircleColor,
    @required this.innerCircleColor,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: outerCircleSize,
      height: outerCircleSize,
      decoration:
          BoxDecoration(shape: BoxShape.circle, color: outerCircleColor),
      child: Container(
        width: innerCircleSize,
        height: innerCircleSize,
        margin: const EdgeInsets.all(5),
        decoration:
            BoxDecoration(shape: BoxShape.circle, color: innerCircleColor),
        child: Center(
          child: child,
        ),
      ),
    );
  }
}
