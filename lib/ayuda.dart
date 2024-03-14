import 'package:flutter/material.dart';

class SolicitarAyuda extends StatefulWidget {
  const SolicitarAyuda({Key? key}) : super(key: key);

  @override
  State<SolicitarAyuda> createState() => _SolicitarAyudaState();
}

class _SolicitarAyudaState extends State<SolicitarAyuda> {
  List<String> contactos = [];

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
        padding: const EdgeInsets.only(left: 24, right: 24, top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              textAlign: TextAlign.justify,
              text: const TextSpan(
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
            const SizedBox(height: 30),
            GestureDetector(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text(
                        'Se ha notificado a tus contactos agregados',
                        style: TextStyle(
                          fontSize: 25,
                        ),
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop(); 
                          },
                          child: Text('Aceptar'),
                        ),
                      ],
                    );
                  },
                );
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0),
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
                    border: Border.all(color: const Color.fromARGB(255, 6, 166, 153), width: 6),
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromARGB(255, 189, 197, 196).withOpacity(.8),
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
                                offset: Offset(2, 3),
                                blurRadius: 4,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 35),
            const Padding(
              padding: EdgeInsets.only(left: 0.0),
              child: Row(
                children: [
                  Icon(
                    Icons.person,
                    size: 30,
                    color: Color.fromARGB(255, 6, 166, 153),
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Contactos',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.only(left: 0.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start, 
                children: [
                  Text(
                    "Agrega tus contactos de emergencia",
                    style: TextStyle(
                      color: Colors.black45,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Container(
              height: 45,
              padding: const EdgeInsets.only(left: 15),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.add),
                    onPressed: () {
                      setState(() {
                        contactos.add('Contacto agregado'); 
                      });
                    },
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Ingresa nombre de usuario',
                        hintStyle: TextStyle(color: Colors.grey.withOpacity(0.8)),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: contactos.map((contacto) {
                return Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: Text(contacto),
                );
              }).toList(),
            ),
            const SizedBox(height: 18),
            const Padding(
              padding: EdgeInsets.only(left: 0.0),
              child: Row(
                children: [
                  Icon(
                    Icons.phone,
                    size: 30,
                    color: Color.fromARGB(255, 6, 166, 153),
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Linea de ayuda',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 0.0),
              child: Text(
                'Un grupo de expertos atiende a las personas que tengan problemas o dudas en materia de adicciones, durante las 24 horas de los 365 días del año.',
                style: TextStyle(fontSize: 15,color: Colors.black45,fontWeight: FontWeight.w500,),
                textAlign: TextAlign.justify,
              ),
            ),
            const SizedBox(height: 10),
            const Center(
              child: Text(
                '01 800 911 2000',
                style: TextStyle(fontSize: 20,color: Colors.black45,fontWeight: FontWeight.w500,),
                textAlign: TextAlign.justify,
              ),
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
