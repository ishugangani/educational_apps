import 'package:educational_apps/screen/education/education_screen.dart';
import 'package:educational_apps/screen/web/web_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: Text("All in One App",style: TextStyle(color: Colors.black),),
            centerTitle: true,
            bottom: TabBar(
              padding: EdgeInsets.all(8),
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: Colors.black),
              ),
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              tabs: [
                Tab(icon: Icon(Icons.menu_book,),),
                Tab(icon: Icon(Icons.movie_outlined,),),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              EduScreen(),
              WebScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
