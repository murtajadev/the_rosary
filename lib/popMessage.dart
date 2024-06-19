import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:the_rosary/design_Buttons.dart';

class PopMessage extends StatefulWidget {
  const PopMessage({super.key});

  @override
  State<PopMessage> createState() => _PopMessageState();
}

class _PopMessageState extends State<PopMessage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorBackground,
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 100,
            ),
            Container(
              height: 400,
              width: 500,
              decoration: BoxDecoration(
                  boxShadow: [ShadowButton()],
                  color: const Color.fromARGB(255, 176, 197, 191),
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      " لقد اتممت التسبيح بتوفيق من الله ,\n يقول الله في كتابه الحكيم  \n\n .وَاذْكُرْ رَبَّكَ كَثِيرًا وَسَبِّحْ بِالْعَشِيِّ وَالْإِبْكَارِ  \nسورة آل عمران ايه 41  \n\n وَالذَّاكِرِينَ اللَّهَ كَثِيرًا وَالذَّاكِرَاتِ \nأَعَدَّ اللَّهُ لَهُمْ مَغْفِرَةً وَأَجْرًا عَظِيمًا \n سورة الاحزاب أية 35  ",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.cairo(
                        fontSize: 20,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Container(
                      width: 190,
                      height: 50,
                      decoration: BoxDecoration(
                          color: colorBackground,
                          boxShadow: [ShadowButton()],
                          borderRadius: BorderRadius.circular(15)),
                      child: Center(
                        child: Text(
                          "رجوع",
                          style: GoogleFonts.cairo(fontSize: 25),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
