import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:the_rosary/choosePage.dart';
import 'package:the_rosary/design_Buttons.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorBackground,
      appBar: AppBar(
        backgroundColor: colorAppbar,
        title: Center(
          child: Text(
            "المسبحة",
            style: GoogleFonts.cairo(
              color: Color(0x3EFFFFFF),
              fontSize: 25,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "asset/images/logo.png",
              height: 250,
              width: 250,
            ),
            SizedBox(
              width: 350,
              height: 230,
              child: Text(
                "بسم الله الرحمن الرحيم \n\n يَا أَيُّهَا الَّذِينَ آمَنُوا اذْكُرُوا اللَّهَ ذِكْرًا كَثِيرًا (41) وَسَبِّحُوهُ بُكْرَةً وَأَصِيلًا(42) \nسورة الاحزاب  ",
                textAlign: TextAlign.center,
                style: GoogleFonts.cairo(
                    color: const Color(0xFF064f60), fontSize: 20),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const ChoosePage()));
              },
              child: Container(
                padding: const EdgeInsets.all(20),
                width: 200,
                height: 80,
                decoration: BoxDecoration(
                  color: colorButton,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [ShadowButton()],
                ),
                child: Center(
                  child: Text(
                    "اضغط هنا ",
                    style: GoogleFonts.cairo(color: Colors.black, fontSize: 25),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
