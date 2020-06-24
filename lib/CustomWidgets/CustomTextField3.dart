import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
class CustomTextField3 extends StatelessWidget {
  final String hint;
//  final ImageIcon icon;
  final Function onClick;
  //The Hint of _errorMessage make a dynamic error Validator
  String  _errorMessage(String _error){
    switch(hint){
      case 'Mobile no.' : return 'Mobile is Empty !';
      case 'Enter Your Email' : return 'Email is Empty !';
      case 'Password' : return 'Password is Empty !';
    }
  }

  const CustomTextField3({@required this.hint,@required this.onClick});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 10),
      // Validator : is used to make sure if the TextFormField isn't Empty important
      child: TextFormField(
        validator: (value){
          if(value.isEmpty){
            return _errorMessage(hint);
          }
        },
        onSaved: onClick,

        cursorColor: Colors.white,
        style: TextStyle(color: Colors.yellow),

        decoration: InputDecoration(
          icon:
          ImageIcon(AssetImage('assets/Water.png',),color: Colors.yellow,),
          hintText: hint,
          hintStyle: TextStyle(
            fontSize: 20,
            color: Colors.yellow.withOpacity(0.6),
          ),
          filled: true,
          // fillColor:Colors.white,

          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(
              color: Colors.white,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(
              color: Colors.white,
            ),
          ),
        ),
        obscureText: hint == 'Password' ? true : false,
      ),
    );
  }
}
