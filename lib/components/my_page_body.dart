import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kanaknaturals_cursor/components/my_text.dart';

class MyPageBody extends StatelessWidget {
  const MyPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 70),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Get in touch",
                  style: GoogleFonts.exo2(
                    fontSize: 20,
                    color: Colors.grey[600],
                  ),
                ),
                MyText(
                  itemID: 0,
                  text: "INFO@KANAKNATURALS.COM",
                  textStyle: GoogleFonts.kanit(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  underlineOffset: 30,
                  width: 280,
                ),
                const Gap(25),
                Text(
                  "Contact",
                  style: GoogleFonts.exo2(
                    fontSize: 20,
                    color: Colors.grey[600],
                  ),
                ),
                MyText(
                  itemID: 1,
                  text: "+1(260) 490 4790",
                  textStyle: GoogleFonts.kanit(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  underlineOffset: 30,
                  width: 161.5,
                ),
                const Gap(25),
                Text(
                  "Headquarters",
                  style: GoogleFonts.exo2(
                    fontSize: 20,
                    color: Colors.grey[600],
                  ),
                ),
                MyText(
                  itemID: 2,
                  text: "321 HOVAN DRIVE, FORT WAYNE, IN 46825",
                  textStyle: GoogleFonts.kanit(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  underlineOffset: 30,
                  width: 225,
                ),
              ],
            ),
            const VerticalDivider(
              width: 250,
              color: Colors.black,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MyText(
                  itemID: 3,
                  hasDot: true,
                  text: "Product Katalog",
                  textStyle: GoogleFonts.kanit(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                  underlineOffset: 30,
                  width: 151,
                ),
                const Gap(25),
                MyText(
                  itemID: 4,
                  hasDot: true,
                  text: "Private Label",
                  textStyle: GoogleFonts.kanit(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                  underlineOffset: 30,
                  width: 123,
                ),
                const Gap(25),
                MyText(
                  itemID: 5,
                  hasDot: true,
                  text: "Kustom Packagin Solutions",
                  textStyle: GoogleFonts.kanit(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                  underlineOffset: 30,
                  width: 252.5,
                ),
                const Gap(25),
                MyText(
                  itemID: 6,
                  hasDot: true,
                  text: "Testing, QC & Kompliance",
                  textStyle: GoogleFonts.kanit(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                  underlineOffset: 30,
                  width: 235,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
