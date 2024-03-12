import 'package:flutter/material.dart';

class Bitacora extends StatelessWidget {
  const Bitacora({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          ' Bitácora',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                 child: Text("Para aquellos "),
                )
              ],
            )
          ],
        ),
      )
    );
  }
}