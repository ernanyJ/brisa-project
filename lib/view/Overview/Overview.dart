import 'package:flutter/material.dart';

import '../../constants/ThemeColors.dart';

class DriversPageFHD extends StatelessWidget {
  const DriversPageFHD({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Expanded(
        child: Container(
            color: const Color.fromARGB(256, 210, 210, 210),
            child: Column(
              children: [
                Container(
                  width: 300,
                  height: 150,
                  color: Colors.indigo,
                )
              ],
            )),
      ),
    );
  }
}
