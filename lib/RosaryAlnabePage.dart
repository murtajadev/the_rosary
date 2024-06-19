import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:the_rosary/design_Buttons.dart';
import 'package:the_rosary/popMessage.dart';

class RosaryAlnabeePage extends StatefulWidget {
  const RosaryAlnabeePage({super.key});

  @override
  State<RosaryAlnabeePage> createState() => _RosaryAlnabeePageState();
}

class _RosaryAlnabeePageState extends State<RosaryAlnabeePage> {
  String textshow = "سبحان الله";
  int totalNumber = 10;
  int countNumber2 = 0;
  int countNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorBackground,
      appBar: AppBar(
        backgroundColor: colorAppbar,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("رجوع"),
          ],
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back),
        ),
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  countNumber = 0;
                  countNumber2 = 0;
                  textshow = "سبحان الله";
                  totalNumber = 10;
                });
              },
              icon: const Icon(Icons.sync))
        ],
      ),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                "هو تسبيح علمه النبي الاكرم \nلام المؤمنين ام سلمه  ويتم قراءة هذا التسبيح وبعدها تدعوا الله بالدعاء الذي تريده  ",
                style: GoogleFonts.cairo(fontSize: 19),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(40),
              width: 200,
              height: 80,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 176, 197, 191),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 0.1,
                    blurStyle: BlurStyle.inner,
                    offset: Offset(3, 1),
                  )
                ],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  textshow,
                  style: GoogleFonts.cairo(
                      fontSize: 26, fontWeight: FontWeight.w600),
                ),
              ),
            ),
            SizedBox(
              width: 200,
              height: 50,
              child: Row(
                children: [
                  Text(
                    "      $totalNumber    /  $countNumber",
                    style: GoogleFonts.cairo(fontSize: 30),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  countNumber = countNumber + 1;
                  if (countNumber == 10 && countNumber2 == 0) {
                    textshow = "الحَمـد لله";
                    countNumber = 0;
                    countNumber2 = 1;
                  } else if (countNumber == 10 && countNumber2 == 1) {
                    textshow = "الله أَكبــر";
                    countNumber = 0;
                    countNumber2 = 2;
                  } else if (countNumber == 10 && countNumber2 == 2) {
                    countNumber = 1;
                    countNumber2 = 0;
                    textshow = "سبحان الله";
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => PopMessage(),
                      ),
                    );
                  }
                });
              },
              child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  color: colorButton,
                  borderRadius: BorderRadius.circular(50),
                  boxShadow: [ShadowButton()],
                ),
                child: Center(
                  child: Text(
                    "اضغـط هـنا ",
                    style: GoogleFonts.cairo(
                        fontSize: 35, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
