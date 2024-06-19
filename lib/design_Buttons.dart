import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color colorButton = Color.fromARGB(255, 240, 219, 145);
const Color colorBackground = Color(0xFFc6d4d0);
const Color colorAppbar = Color.fromARGB(175, 88, 169, 255);
const Color colorText = Color(0xFF454242);
BoxShadow ShadowButton() {
  return const BoxShadow(
    color: Colors.grey,
    blurRadius: 0.1,
    blurStyle: BlurStyle.inner,
    offset: Offset(3, 2),
  );
}

class SelectPage extends StatefulWidget {
  const SelectPage({
    super.key,
    this.name,
    required this.selectPageRosary,
  });
  final String? name;
  final selectPageRosary;

  @override
  State<SelectPage> createState() => _SelectPageState();
}

class _SelectPageState extends State<SelectPage> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => widget.selectPageRosary));
      },
      child: Container(
        margin: const EdgeInsets.all(20),
        height: 190,
        width: 190,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            boxShadow: [ShadowButton()],
            color: colorButton),
        child: Center(
          child: Text(
            widget.name!,
            style: GoogleFonts.cairo(color: colorText, fontSize: 21),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
