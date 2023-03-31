import 'package:educational_apps/screen/home/home_provider.dart';
import 'package:educational_apps/screen/home/home_screen.dart';
import 'package:educational_apps/screen/ott/edu_browser.dart';
import 'package:educational_apps/screen/ott/web_browser.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main()
{
   runApp(
     MultiProvider(
       providers: [
         ChangeNotifierProvider(create: (context) => HomeProvider(),),
       ],
       child: MaterialApp(
         debugShowCheckedModeBanner: false,
         routes: {
           '/':(context) => HomeScreen(),
           'edu':(context) => EduBrowser(),
           'web':(context) => WebBrowser(),
         },
       ),
     ),
   );
}