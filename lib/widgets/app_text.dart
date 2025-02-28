import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppText extends StatefulWidget {
  final double size;
  final String text;
  final Color color;

  const AppText({super.key,
    this.size=16,
    required this.text,
    this.color=Colors.black54});

  @override
  State<AppText> createState() => _AppTextState();
}



class _AppTextState extends State<AppText> {



  @override
  Widget build(BuildContext context) {
    return Text(
      widget.text,
      style:TextStyle(
          color: widget.color,
          fontSize: widget.size,


      ),
    );
  }
}
