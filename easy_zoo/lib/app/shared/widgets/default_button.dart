// ignore_for_file: public_member_api_docs, sort_constructors_first


import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key? key,
    required this.onTap,
    required this.title,
    required this.radius,
    required this.background,
    required this.enabled,
  }) : super(key: key);

  final Function() onTap;
  final String title;
  final double radius;
  final Color background;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed:enabled? onTap:null,
      style: ButtonStyle(
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius),
          ),
        ),
        backgroundColor: MaterialStateProperty.all(background),
      ),
      child: Text(
        title,
        style: const TextStyle(
            fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
      ),
    );
  }
}
