import 'package:book_app/core/styles.dart';
import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({
    super.key,
    this.left = Radius.zero,
    this.right = Radius.zero,
    this.color = Colors.white,
    required this.text,
  });
  final Radius left;
  final Radius right;
  final Color color;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      // padding: EdgeInsets.all(30),
      // margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      height: 75,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.horizontal(left: left, right: right)),
      child: Center(
        child: Text(
          text,
          style: Styles.textStyle18.copyWith(
              color: Colors.black, fontWeight: FontWeight.w900, fontSize: 24),
        ),
      ),
    );
  }
}
