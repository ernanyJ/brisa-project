import 'package:brisa_project/controllers/CarsController.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContentHandler extends StatelessWidget {
  ContentHandler({
    super.key,
    required this.currentOption,
  });

  int currentOption = 0;
  var carcontroller = CarsController();

  @override
  Widget build(BuildContext context) {
    switch (currentOption) {
      case 1:
        return const Center(
          child: Text(
            "motoristas",
            style: TextStyle(fontSize: 40),
          ),
        );
      case 2:
        return const Center(
          child: Text(
            "viagens",
            style: TextStyle(fontSize: 40),
          ),
        );
      default:
        return ListView.builder(
          itemCount: vehicleList.length,
          itemBuilder: (context, index) {
            return CarTile(
                context, vehicleList[index].image, vehicleList[index].modelo);
          },
        );
    }
  }
}

Padding CarTile(context, Image icon, String carModel) {
  return Padding(
    padding: const EdgeInsets.only(right: 20, left: 20, top: 10),
    child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 163, 163, 163),
            borderRadius: BorderRadius.circular(20)),
        height: 120,
        child: Row(
          children: [
            const SizedBox(width: 20),
            icon,
            const SizedBox(width: 10),
            Text(
              carModel,
              style: GoogleFonts.openSans(
                textStyle: const TextStyle(height: 0.9),
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
          ],
        )),
  );
}
