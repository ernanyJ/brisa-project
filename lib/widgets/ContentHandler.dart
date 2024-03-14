import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContentHandler extends StatelessWidget {
  ContentHandler({
    super.key,
    required this.currentOption,
  });

  int currentOption = 0;

  @override
  Widget build(BuildContext context) {
    switch (currentOption) {
      case 1:
        return Text("test1");
      case 2:
        return Text("test2");
      default:
        return ListView(
          children: [
            CarTile(context, null, "Teste"),
            const SizedBox(
              height: 5,
            ),
            CarTile(context, null, "Teste"),
            const SizedBox(
              height: 5,
            ),
            CarTile(context, null, "Teste"),
            const SizedBox(
              height: 5,
            ),
            CarTile(context, null, "Teste"),
            const SizedBox(
              height: 5,
            ),
            CarTile(context, null, "Teste"),
            const SizedBox(
              height: 5,
            ),
            CarTile(context, null, "Teste"),
            const SizedBox(
              height: 5,
            ),
            CarTile(context, null, "Teste"),
            const SizedBox(
              height: 5,
            ),
            CarTile(context, null, "Teste"),
            const SizedBox(
              height: 5,
            ),
            CarTile(context, null, "Teste"),
            const SizedBox(
              height: 5,
            ),
            CarTile(context, null, "Teste"),
            const SizedBox(
              height: 5,
            ),
            CarTile(context, null, "Teste"),
            const SizedBox(
              height: 5,
            ),
            CarTile(context, null, "Teste"),
            const SizedBox(
              height: 5,
            ),
            CarTile(context, null, "Teste"),
            const SizedBox(
              height: 5,
            ),
            CarTile(context, null, "Teste"),
            const SizedBox(
              height: 5,
            ),
          ],
        );
    }
  }
}

Container CarTile(context, Image? icon, String carModel) {
  return Container(
    height: 50,
    width: (MediaQuery.of(context).size.width) - 100,
    color: Color.fromARGB(255, 194, 125, 47),
    child: Text(carModel),
  );
}
