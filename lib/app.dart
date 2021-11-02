
import 'package:flutter/material.dart';
import 'first_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: () => const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Myhomepage(),
      )
    );
  }
}


//