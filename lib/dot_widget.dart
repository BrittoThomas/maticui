import 'package:flutter/material.dart';

class DotWidget extends StatelessWidget {

  DotWidget({this.selected = false });

  final bool selected;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 8,
      height: 8,
      margin: EdgeInsets.all(2),
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: selected ? Colors.white : Colors.white30
      ),
    );
  }
}
