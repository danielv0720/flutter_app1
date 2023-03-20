import 'package:flutter/material.dart';

class Custom_image extends StatelessWidget {
  const Custom_image({Key? key, required this.child}) : super(key: key);

  final Widget child;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(borderRadius: BorderRadius.circular(10), child: child);
  }
}
