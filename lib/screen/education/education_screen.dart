import 'package:educational_apps/screen/home/home_provider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EduScreen extends StatefulWidget {
  const EduScreen({Key? key}) : super(key: key);

  @override
  State<EduScreen> createState() => _EduScreenState();
}

class _EduScreenState extends State<EduScreen> {
  @override
  Widget build(BuildContext context) {

    HomeProvider HPTrue = Provider.of<HomeProvider>(context,listen: true);
    HomeProvider HPFalse = Provider.of<HomeProvider>(context,listen: false);

    return  Padding(
      padding: const EdgeInsets.all(10),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: HPTrue.eduName.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.pushNamed(context, 'edu');
              HPTrue.eduLink(index);
            },
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                height: double.minPositive,
                width: double.minPositive,
                child: Column(
                  children: [
                    Image.asset("${HPTrue.eduLogo[index]}",fit: BoxFit.cover,width: 85,height: 85,),
                    SizedBox(height: 10,),
                    Text(
                      "${HPTrue.eduName[index]}",
                      style: GoogleFonts.quicksand(fontSize: 20),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
