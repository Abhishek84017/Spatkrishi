import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Inputtext extends StatelessWidget {
  final String text;
  final TextEditingController controller;
  final TextInputType keyboardtype;
  final VoidCallback   onEditingcomplete;
  final FocusNode   focusNode;
  final bool obscureText;


  const Inputtext({Key key, this.text, this.controller, this.keyboardtype, this.onEditingcomplete, this.focusNode,  this.obscureText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.0.w, vertical: 15.0.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text,
            style: const TextStyle(color: Colors.grey),
          ),
          SizedBox(
            height: 5.h,
          ),
          TextFormField(
            maxLines: 1,
            controller: controller,
            keyboardType: keyboardtype,
            cursorColor: Colors.amber,
            onEditingComplete: onEditingcomplete,
            focusNode: focusNode,
            obscureText: obscureText,
            cursorRadius: const Radius.circular(100.0),
            decoration: InputDecoration(
                // filled: true,
                // fillColor: Colors.grey,
                border: const OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: const BorderSide(color: Colors.grey),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: const BorderSide(color: Colors.grey),
                )),
          ),
        ],
      ),
    );
  }
}
