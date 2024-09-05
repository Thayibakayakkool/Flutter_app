import 'package:flutter/material.dart';

class ShareButtonWidget extends StatelessWidget {
  void Function() onPressed;
   ShareButtonWidget({super.key,required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: IconButton(
        style: const ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(
            Colors.black,
          ),
          foregroundColor: WidgetStatePropertyAll(
            Colors.white,
          ),
          shape: WidgetStatePropertyAll(
            CircleBorder(),
          ),
        ),
        onPressed: ()=>onPressed(),
        icon: const Icon(
          Icons.share,
          color: Colors.white,
        ),
      ),
    );
  }
}
