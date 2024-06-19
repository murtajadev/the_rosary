import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:the_rosary/design_Buttons.dart';
import 'package:the_rosary/popMessage.dart';

class RosaryAlzahraa extends StatefulWidget {
  const RosaryAlzahraa({super.key});

  @override
  State<RosaryAlzahraa> createState() => _RosaryAlzahraaState();
}

class _RosaryAlzahraaState extends State<RosaryAlzahraa> {
  String textshow = "الله اكبر ";
  int totalNumber = 34;
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
                  textshow = "الله أَكبر";
                  totalNumber = 34;
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
            const SizedBox(
              height: 100,
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
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "$totalNumber  /  $countNumber",
                    style: GoogleFonts.cairo(fontSize: 30),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  countNumber = countNumber + 1;

                  if (countNumber == 34) {
                    textshow = "الحمد لله";
                    countNumber = 0;
                    totalNumber = 33;
                    countNumber2 = 2;
                  }
                  if (countNumber == 33 && countNumber2 == 2) {
                    textshow = "سبحـان الله";
                    countNumber = 0;
                    countNumber2 = 1;
                    totalNumber = 33;
                  }

                  if (countNumber == 33 && countNumber2 == 1) {
                    countNumber = 1;
                    countNumber2 = 0;
                    totalNumber = 34;
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
