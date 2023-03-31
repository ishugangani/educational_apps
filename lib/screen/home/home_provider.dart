import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeProvider extends ChangeNotifier
{

  WebViewController? webController, eduController;

  List eduUrl=[
    "https://byjus.com/",
    "https://www.toppr.com/",
    "https://www.vedantu.com/",
    "https://brainly.com/",
    "https://www.learncbse.in/",
    "https://www.javatpoint.com/",
    "https://www.tutorialspoint.com/",
    "https://www.w3schools.com/",
    "https://www.wikipedia.org/",
    "https://www.geeksforgeeks.org/",
  ];
  List eduLogo=[
    "asset/eduimages/byjus.png",
    "asset/eduimages/toppr.png",
    "asset/eduimages/vedantu.png",
    "asset/eduimages/brainly.png",
    "asset/eduimages/learncbse.png",
    "asset/eduimages/javatpoint.png",
    "asset/eduimages/tutorialpoint.png",
    "asset/eduimages/w3schools.png",
    "asset/eduimages/wikipedia.png",
    "asset/eduimages/geeksforgeeks.png",
  ];
  List eduName=[
    "Byju's",
    "Toppr",
    "Vedantu",
    "Brainly",
    "Learn CBSE",
    "JavaTpoint",
    "TutorialPoint",
    "W3schools",
    "Wikipedia",
    "GeeksforGeeks",
  ];
  List webUrl=[
    "https://www.netflix.com/",
    "https://www.hotstar.com/",
    "https://www.primevideo.com/",
    "https://erosnow.com/",
    "https://www.jiocinema.com/",
    "https://www.zee5.com/",
    "https://www.voot.com/",
    "https://www.viki.com/",
    "https://www.sonyliv.com/",
    "https://www.mxplayer.in/",
  ];
  List webLogo=[
    "asset/webimages/netflix.png",
    "asset/webimages/hotstar.png",
    "asset/webimages/primevideo.png",
    "asset/webimages/erosnow.png",
    "asset/webimages/jiocinema.png",
    "asset/webimages/zee5.png",
    "asset/webimages/voot.png",
    "asset/webimages/viki.png",
    "asset/webimages/sonylive.png",
    "asset/webimages/mxplayer.png",
  ];
  List webName=[
    "Netflix",
    "Hotstar",
    "Prime Video",
    "Eros Now",
    "Jio Cinema",
    "Zee5",
    "Voot",
    "Viki",
    "Sony Liv",
    "MX Player",
  ];

  void webLink(int index)
  {
    webController=WebViewController();
    webController!.loadRequest(Uri.parse("${webUrl[index]}"));
  }

  void eduLink(int index)
  {
    eduController=WebViewController();
    eduController!.loadRequest(Uri.parse("${eduUrl[index]}"));
  }
}