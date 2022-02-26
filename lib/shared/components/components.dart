import 'package:flutter/material.dart';

Widget defaultButton({

  double width = double.infinity,
  Color background = Colors.blue,
  bool isUpperCase = true,
  double radius = 10.0,
  required Function function,
  required String text,

}) =>
    Container(
      width: width,
      height: 40.0,
      child: MaterialButton(
        onPressed: (){
          function();
        },
        child: Text(
          isUpperCase ? text.toUpperCase() : text,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
            radius,
        ),
        color: background
      ),
    );


Widget defaultTextFormField({
  required TextEditingController Controller,
  required TextInputType type,
  Function? onSubmit,
  Function? onChange,
  bool isPassword = false,
  required Function validate,
  required String label,
  required IconData prefix,
  IconData? suffix,
  Function? suffixPressed,
})=> TextFormField(
  controller: Controller,
  keyboardType: type,
  obscureText: isPassword,
  onFieldSubmitted: (s){
    onSubmit!(s);
  },
  onChanged: (s){
    onChange!(s);
  },
  validator: (s){
    validate(s);
  },
  decoration: InputDecoration(
    labelText: label,
    border: OutlineInputBorder(),
    prefixIcon: Icon(
      prefix,
    ),

    suffixIcon: suffix != null ? IconButton(
      onPressed:(){
        suffixPressed!();
      },
      icon: Icon(
        suffix,
      ),
    ) : null,
  ),
);
