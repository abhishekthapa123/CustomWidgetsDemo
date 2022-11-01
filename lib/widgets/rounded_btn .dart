import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class RoundedButton extends StatelessWidget {
  final  buttonName;
  final Icon? icon;
  final Color? bgColor;
  final TextStyle? textStyle;
  final VoidCallback?callback;

  const RoundedButton
  (
      {
        
      super.key,
      required this.buttonName,
      this.icon,
      this.bgColor= Colors.blue,
      this.textStyle,
      this.callback
      }
  );

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
      
        width: 100,
        
        child: ElevatedButton(onPressed: () => {
          callback!()
        },
        child: icon!=null ?Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon!,
            SizedBox(width:10,),       //I will make it  custom later   
            buttonName
          ],
        ):buttonName,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(5))
          )
        ),
        ),

      ),
    );
   
  }
}
