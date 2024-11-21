import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
   CustomButton({required this.text,this.ontap});
  final String text;
  VoidCallback? ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        width: double.infinity,
        height: 60,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8), color: Colors.white),
        child: Center(child: Text(text)),
      ),
    );
  }
}
