import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField.CustomformTextField({this.hintText, this.onchanged,this.obsecureText=false});

  final String? hintText;
  Function(String)? onchanged;

  bool? obsecureText ;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText:obsecureText! ,
      validator: (data) {
        if (data!.isEmpty) return 'field is required';
      },
      onChanged: onchanged,
      decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.white),
          enabledBorder:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.white))),
    );
  }
}
