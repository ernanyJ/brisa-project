import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/ThemeColors.dart';

class DriversPageFHD extends StatelessWidget {
  const DriversPageFHD({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InfoCard(
                  context,
                  const Icon(
                    Icons.drive_eta,
                    size: 50,
                    color: Colors.white,
                  ),
                  "Veículos\ndisponíveis",
                  5),
              InfoCard(
                  context,
                  const Icon(
                    Icons.person_2,
                    size: 50,
                    color: Colors.white,
                  ),
                  "Motoristas\ndisponíveis",
                  7),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(right: 900),
          height: 139.47,
          width: 227.51,
          color: Colors.black,
        )
      ],
    );
  }

  Container InfoCard(context, Icon icon, String text, int number) {
    var screenWidth = MediaQuery.of(context).size.width;
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [
          Color.fromARGB(255, 100, 27, 217),
          Color.fromARGB(255, 42, 24, 143),
        ]),
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(73, 0, 0, 0),
            spreadRadius: 2,
            blurRadius: 3,
            offset: Offset(0, 4), // changes position of shadow
          ),
        ],
      ),
      width: screenWidth * 0.4,
      height: 89,
      child: FittedBox(
        fit: BoxFit.contain,
        child: Row(
          children: [
            // Leading icon
            icon,
            // Main text
            const SizedBox(
              width: 5,
            ),
            Text(
              text,
              style: GoogleFonts.roboto(
                  color: Colors.white,
                  fontWeight: FontWeight.normal,
                  fontSize: 25,
                  height: 1),
            ),
            const SizedBox(
              width: 190,
            ),
            Text(
              "$number",
              style: GoogleFonts.roboto(
                color: Colors.white,
                fontWeight: FontWeight.normal,
                fontSize: 50,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
