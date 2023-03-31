import 'package:educational_apps/screen/home/home_provider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class WebScreen extends StatefulWidget {
  const WebScreen({Key? key}) : super(key: key);

  @override
  State<WebScreen> createState() => _WebScreenState();
}

class _WebScreenState extends State<WebScreen> {
  @override
  Widget build(BuildContext context) {

    HomeProvider HPTrue = Provider.of<HomeProvider>(context,listen: true);
    HomeProvider HPFalse = Provider.of<HomeProvider>(context,listen: false);

    return Padding(
      padding: const EdgeInsets.all(10),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: HPTrue.webName.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.pushNamed(context, 'web');
              HPTrue.webLink(index);
            },
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                height: double.minPositive,
                width: double.minPositive,
                child: Column(
                  children: [
                    Image.asset("${HPTrue.webLogo[index]}",fit: BoxFit.contain,width: 85,height: 85,),
                    SizedBox(height: 10,),
                    Text(
                      "${HPTrue.webName[index]}",
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
