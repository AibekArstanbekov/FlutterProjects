import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class ButtonContainer extends StatelessWidget {
  ButtonContainer({
    Key? key,
    required this.color,
    required this.onTap,
  }) : super(key: key);
  final Color color;
  final player = AudioPlayer();
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 95,
        color: color,
      ),
    );
  }
}
