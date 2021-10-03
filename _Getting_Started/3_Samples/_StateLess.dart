import 'package:flutter/material.dart';

class ColorfulContainer extends StatelessWidget {
  ColorfulContainer({this.child, this.height});
  final Widget child;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow[300],
      child: this.child,
      height: this.height,
    );
  }

}
