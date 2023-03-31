import 'package:educational_apps/screen/home/home_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:webview_flutter/webview_flutter.dart';

class EduBrowser extends StatefulWidget {
  const EduBrowser({Key? key}) : super(key: key);

  @override
  State<EduBrowser> createState() => _EduBrowserState();
}

class _EduBrowserState extends State<EduBrowser> {
  @override
  Widget build(BuildContext context) {

    HomeProvider HPTrue = Provider.of<HomeProvider>(context,listen: true);
    HomeProvider HPFalse = Provider.of<HomeProvider>(context,listen: false);

    return SafeArea(
      child: Scaffold(
        body: WebViewWidget(controller: HPTrue.eduController!),
      ),
    );
  }
}
