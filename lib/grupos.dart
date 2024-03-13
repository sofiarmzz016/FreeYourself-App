import 'package:flutter/material.dart';

class GruposAyuda extends StatefulWidget {
  const GruposAyuda({super.key});

  @override
  State<GruposAyuda> createState() => _GruposAyudaState();
}

class _GruposAyudaState extends State<GruposAyuda> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          ' Grupos de Ayuda',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(left: 24, right: 24, top: 10),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: 340,
                  height: 43,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(149, 201, 201, 201),
                    borderRadius: BorderRadius.circular(40)
                  ),
                  child: Row(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.search),
                        onPressed: () {
                        },
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Buscar',
                            hintStyle: TextStyle(color: Colors.grey.withOpacity(0.8)),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: 30,),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: Container(
                    width: 330,
                    height: 60,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                const Color(0xFF30D5C8).withOpacity(0.85), 
                                const Color(0xFF30D5C8).withOpacity(0.28), 
                              ],
                            ),
                      border: Border.all(color: const Color.fromARGB(255, 6, 166, 153), width: 0.8),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Stack(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.white, 
                              child: Icon(Icons.people, color: Color.fromARGB(255, 0, 89, 71)), 
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 70.0, right: 20.0, bottom: 19), 
                            child: Text(
                              'Superación de Alcohol', 
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 70.0, right: 20.0, top:22), 
                            child: Text(
                              '67 integrantes', 
                              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15,),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: Container(
                    width: 330,
                    height: 60,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                const Color(0xFF30D5C8).withOpacity(0.85), 
                                const Color(0xFF30D5C8).withOpacity(0.28), 
                              ],
                            ),
                      border: Border.all(color: const Color.fromARGB(255, 6, 166, 153), width: 0.8),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Stack(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.white, 
                              child: Icon(Icons.people, color: Color.fromARGB(255, 0, 89, 71)), 
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 70.0, right: 20.0, bottom: 19), 
                            child: Text(
                              'Superación de Tabaco', 
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 70.0, right: 20.0, top:22), 
                            child: Text(
                              '34 integrantes', 
                              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15,),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: Container(
                    width: 330,
                    height: 75,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                const Color(0xFF30D5C8).withOpacity(0.85), 
                                const Color(0xFF30D5C8).withOpacity(0.28), 
                              ],
                            ),
                      border: Border.all(color: const Color.fromARGB(255, 6, 166, 153), width: 0.8),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Stack(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.white, 
                              child: Icon(Icons.people, color: Color.fromARGB(255, 0, 89, 71)),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 70.0, right: 20.0, bottom: 19), 
                            child: Text(
                              'Superación del Cigarrillo Electrónico', 
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, height: 1.0),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 70.0, right: 20.0, top:35), 
                            child: Text(
                              '49 integrantes', 
                              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15,),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: Container(
                    width: 330,
                    height: 60,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                const Color(0xFF30D5C8).withOpacity(0.85), 
                                const Color(0xFF30D5C8).withOpacity(0.28), 
                              ],
                            ),
                      border: Border.all(color: const Color.fromARGB(255, 6, 166, 153), width: 0.8),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Stack(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.white, // Color del círculo
                              child: Icon(Icons.people, color: Color.fromARGB(255, 0, 89, 71)), 
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 70.0, right: 20.0, bottom: 19), 
                            child: Text(
                              'Superación de Marihuana', 
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 70.0, right: 20.0, top:22), 
                            child: Text(
                              '53 integrantes', 
                              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15,),
          ],
        ),
      ),
    );
  }
}

