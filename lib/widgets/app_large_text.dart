import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppLargeText extends StatefulWidget {
  final double size;
  final String text;
  final Color color;

  const AppLargeText({super.key,
    this.size=30,
    required this.text,
   this.color=Colors.black});

  @override
  State<AppLargeText> createState() => _AppLargeTextState();
}

class _AppLargeTextState extends State<AppLargeText> {



  @override
  Widget build(BuildContext context) {
    return Text(
      widget.text,
      style:TextStyle(
        color: widget.color,
        fontSize: widget.size,
        fontWeight: FontWeight.bold

      ),
    );
  }
}
