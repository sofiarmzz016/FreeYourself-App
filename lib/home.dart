import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Column(
          children: [
            Text(
              ' ¡Hola, usuario!',
              style: TextStyle(
                fontSize: 33,
                fontWeight:FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView( 
        child: Center(
          child: Column(
            children: [
              /**Container(
                margin: const EdgeInsets.only(top:15),
                width: 343,
                height: 60,
                decoration: BoxDecoration(
                  color: const Color(0xFFC9F9F5),
                  border: Border.all(
                    color: const Color(0xFFA9F2ED),
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    " Frase del día",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),**/

              const SizedBox(height: 25),

              Container(
                margin: const EdgeInsets.only(left: 26),
                alignment: Alignment.centerLeft,
                child: const Text(
                  'Adicción',
                  style: TextStyle(
                    fontSize: 27,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),

              const SizedBox(height: 5),

              Container(
                width: 343,
                height: 40,
                decoration: BoxDecoration(
                  color: const Color(0xFFEFEDF2),
                  borderRadius: BorderRadius.circular(12.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      blurRadius: 2, 
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: Theme(
                  data: ThemeData(
                    canvasColor: const Color(0xFFEFEDF2),   
                  ),
                  child: DropdownButtonFormField<String>(
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 5),
                      border: InputBorder.none,
                    ),
                    items: const [
                      DropdownMenuItem(
                        value: 'opcion1',
                        child: Text('Cigarro', style:TextStyle(fontSize: 16)),
                      ),
                      DropdownMenuItem(
                        value: 'opcion2',
                        child: Text('Alcohol'),
                      ),
                      DropdownMenuItem(
                        value: 'opcion3',
                        child: Text('Cigarrillo electrónico'),
                      ),
                      DropdownMenuItem(
                        value: 'opcion4',
                        child: Text('Marihuana'),
                      ),
                      DropdownMenuItem(
                        value: 'opcion5',
                        child: Text('Metanfetamina'),
                      ),
                      DropdownMenuItem(
                        value: 'opcion6',
                        child: Text('Refresco'),
                      ),
                    ],
                    onChanged: (value) {
                      print('Opción seleccionada: $value');
                    },
                    // value: _selectedOption,
                    hint: const Text(
                      'Selecciona una opción',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight:FontWeight.w400,
                      )
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 22),

              Container(
                width: 343,
                height: 68,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 136, 225, 219),
                  borderRadius: BorderRadius.circular(8.0),
                  border: Border.all(color: const Color.fromARGB(255, 6, 166, 153), width: 1.0),
                  /**boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5), 
                      blurRadius: 2, 
                      offset: const Offset(0, 1), 
                    ),
                  ],**/
                ),
                child: const Row( 
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: Icon(Icons.message_outlined, color: Colors.black54), 
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(10.0, 6.0, 10.0, 8.0),
                      child: Text(
                        " Como te sientes hoy?",
                        style: TextStyle(
                          color: Color.fromARGB(171, 0, 0, 0),
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 25),

              Container(
                margin: const EdgeInsets.only(left: 26),
                alignment: Alignment.centerLeft,
                child: const Text(
                  'Mi progreso',
                  style: TextStyle(
                    fontSize: 27,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),

              const SizedBox(height: 5),

              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center, 
                      children: [
                        Container(
                          width: 343,
                          height: 108,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            border: Border.all(color: const Color.fromARGB(255, 6, 166, 153), width: 0.8),
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                const Color(0xFF30D5C8).withOpacity(0.85), 
                                const Color(0xFF30D5C8).withOpacity(0.28), 
                              ],
                            ),
                          ),
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.all(8.5),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.timer_outlined, 
                                      color: Colors.black,
                                      size: 24,
                                    ),
                                    SizedBox(width: 6), 
                                    Text(
                                      "Tiempo sin adicciones",
                                      style: TextStyle(
                                        color: Colors.black87,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 55.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
                                  children: [
                                    Column(
                                      children: [
                                        Text(
                                          "00",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 26,
                                            fontWeight:FontWeight.w800, 
                                          ),
                                        ),
                                        Text(
                                          " meses",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16,
                                            fontWeight:FontWeight.w600, 
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          "00",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 26,
                                            fontWeight:FontWeight.w800, 
                                          ),
                                        ),
                                        Text(
                                          " días",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16,
                                            fontWeight:FontWeight.w600, 
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          "00",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 26,
                                            fontWeight:FontWeight.w800, 
                                          ),
                                        ),
                                        Text(
                                          " horas",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16,
                                            fontWeight:FontWeight.w600, 
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center, 
                      children: [
                        Container(
                          width: 166,
                          height: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            border: Border.all(color: const Color.fromARGB(255, 6, 166, 153), width: 0.8),
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                const Color(0xFF30D5C8).withOpacity(1.0), 
                                const Color(0xFF30D5C8).withOpacity(0.4), 
                              ],
                            ),
                          ),
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.all(7.0),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.attach_money, 
                                      size: 22, 
                                      color: Color.fromARGB(255, 43, 151, 47), 
                                    ),
                                    SizedBox(width: 4), 
                                    Text(
                                      "Dinero ahorrado",
                                      style: TextStyle(
                                        color: Colors.black87,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "\$0.0",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 19,
                                        fontWeight: FontWeight.w800,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 11),
                        Container(
                          width: 166,
                          height: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            border: Border.all(color: const Color.fromARGB(255, 6, 166, 153), width: 0.8),
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                const Color(0xFF30D5C8).withOpacity(1.0), 
                                const Color(0xFF30D5C8).withOpacity(0.4), 
                              ],
                            ),
                          ),
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.all(7.0),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.smoking_rooms_rounded, 
                                      size: 22, 
                                      color: Colors.orange, 
                                    ),
                                    SizedBox(width: 7), 
                                    Text(
                                      "Cigarros",
                                      style: TextStyle(
                                        color: Colors.black87,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "0",
                                      style: TextStyle(
                                        color: Colors.black87,
                                        fontSize: 19,
                                        fontWeight: FontWeight.w800,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center, 
                      children: [
                        Container(
                          width: 166,
                          height: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            border: Border.all(color: const Color.fromARGB(255, 6, 166, 153), width: 0.8),
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                const Color(0xFF30D5C8).withOpacity(1.0),
                                const Color(0xFF30D5C8).withOpacity(0.4), 
                              ],
                            ),
                          ),
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.all(7.5),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.favorite, 
                                      size: 19, 
                                      color: Color.fromARGB(255, 213, 95, 95)
                                    ),
                                    SizedBox(width: 7), 
                                    Text(
                                      "Dias extra de vida",
                                      style: TextStyle(
                                        color: Colors.black87,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "0",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 19,
                                        fontWeight: FontWeight.w800,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 11),
                        Container(
                          width: 166,
                          height: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            border: Border.all(color: const Color.fromARGB(255, 6, 166, 153), width: 0.8),
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                const Color(0xFF30D5C8).withOpacity(1.0), 
                                const Color(0xFF30D5C8).withOpacity(0.4), 
                              ],
                            ),
                          ),
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.all(7.5),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.mood_rounded,
                                      size: 21, 
                                      color: Colors.blue, 
                                    ),
                                    SizedBox(width: 7), 
                                    Text(
                                      "Seguimiento",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "--",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              )
            ],
          ),
        ),
      ), 
    );
  }
}
