import 'package:flutter/material.dart';
import 'package:the_rosary/RosaryAlnabePage.dart';
import 'package:the_rosary/design_Buttons.dart';
import 'package:the_rosary/openRosaryPage.dart';
import 'package:the_rosary/rosaryAlZahraaPage.dart';

class ChoosePage extends StatefulWidget {
  const ChoosePage({super.key});

  @override
  State<ChoosePage> createState() => _ChoosePageState();
}

class _ChoosePageState extends State<ChoosePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorAppbar,
      ),
      backgroundColor: colorBackground,
      body: const Column(
        children: [
          SizedBox(
            height: 200,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SelectPage(
                  selectPageRosary: RosaryAlzahraa(),
                  name: "تسبيحة الزهراء",
                )
              ],
            ),
          ),
          SizedBox(
            height: 200,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SelectPage(
                  selectPageRosary: RosaryAlnabeePage(),
                  name: "تسبيحة النبي \nالاكرم ",
                )
              ],
            ),
          ),
          SizedBox(
            height: 200,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SelectPage(
                  selectPageRosary: OpenRosaryPage(),
                  name: "تسبيح مفتوح",
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
