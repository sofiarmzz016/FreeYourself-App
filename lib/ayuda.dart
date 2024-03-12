import 'package:flutter/material.dart';

class SolicitarAyuda extends StatefulWidget {
  const SolicitarAyuda({super.key});

  @override
  State<SolicitarAyuda> createState() => _SolicitarAyudaState();
}

class _SolicitarAyudaState extends State<SolicitarAyuda> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          ' Botón de ayuda',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(left: 24, right: 24, top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              textAlign: TextAlign.justify,
              text: TextSpan(
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  height: 1.4,
                ),
                children: [
                  TextSpan(
                    text: 'Para aquellos momentos de tentación, el botón de "',
                  ),
                  TextSpan(
                    text: 'Solicitar Ayuda',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF10D2C3),
                    ),
                  ),
                  TextSpan(
                    text: '" notificará instantáneamente a tus amigos del grupo para proporcionar apoyo inmediato.',
                  ),
                ],
              ),
            ),
            SizedBox(height: 30,),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20.0), 
                  child: Container(
                    height: 300,
                    width: 300,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                const Color(0xFF30D5C8).withOpacity(1.0), 
                                const Color(0xFF30D5C8).withOpacity(0.5), 
                              ],
                            ),
                      border: Border.all(color: Color.fromARGB(255, 6, 166, 153), width: 6),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 189, 197, 196).withOpacity(.8),
                          blurRadius: 2, 
                          offset: const Offset(4, 4), 
                        )
                      ],
                    ),
                    child: const Stack(
                      children: [
                        Center(
                          child: Text(
                            'Solicitar Ayuda',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.w700,
                              shadows: [
                                Shadow(
                                  color: Colors.grey,
                                  offset: Offset(2, 3), // Ajusta la dirección de la sombra
                                  blurRadius: 4, // Ajusta el radio del desenfoque de la sombra
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30,),
            Padding(
              padding: EdgeInsets.only(left: 0.0),
              child: Container(
                child: Text(
                  'Contactos',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.only(left: 0.0),
              child: Container(
                width: 343,
                height: 55,
                decoration: BoxDecoration(
                  color: const Color(0xFFC0F3F0),
                  borderRadius: BorderRadius.circular(8.0),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(255, 38, 164, 139).withOpacity(0.5), 
                      blurRadius: 2, 
                      offset: const Offset(2, 2), 
                    ),
                  ],
                  
                ),
                child: const Row( 
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Icon(Icons.person, color: Colors.black45), 
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10.0, 6.0, 10.0, 8.0),
                      child: Text(
                        "Agrega tus contactos de emergencia",
                        style: TextStyle(
                          color: Colors.black45,
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}