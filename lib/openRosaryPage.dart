import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:the_rosary/design_Buttons.dart';

class OpenRosaryPage extends StatefulWidget {
  const OpenRosaryPage({super.key});

  @override
  State<OpenRosaryPage> createState() => _OpenRosaryPageState();
}

class _OpenRosaryPageState extends State<OpenRosaryPage> {
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
                });
              },
              icon: const Icon(Icons.sync))
        ],
      ),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
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
                  "$countNumber",
                  style: GoogleFonts.cairo(
                      fontSize: 26, fontWeight: FontWeight.w600),
                ),
              ),
            ),
            const SizedBox(
              width: 200,
              height: 80,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  countNumber = countNumber + 1;
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
                        fontSize: 30, fontWeight: FontWeight.w500),
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
