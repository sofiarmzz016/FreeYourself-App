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
                    ],
                    onChanged: (value) {
                      // Aquí puedes manejar la opción seleccionada
                      print('Opción seleccionada: $value');
                    },
                    // Valor inicial, si lo necesitas
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
                  color: const Color(0xFFC0F3F0),
                  borderRadius: BorderRadius.circular(8.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5), // Color de la sombra
                      blurRadius: 2, // Radio de desenfoque de la sombra
                      offset: const Offset(0, 2), // Desplazamiento vertical positivo para sombra abajo
                    ),
                  ],
                ),
                child: const Row( 
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Icon(Icons.message_outlined, color: Colors.black54), 
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10.0, 6.0, 10.0, 8.0),
                      child: Text(
                        " Como te sientes hoy?",
                        style: TextStyle(
                          color: Colors.black54,
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
                          height: 102,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
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
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.timer, 
                                      color: Colors.white,
                                      size: 24,
                                    ),
                                    SizedBox(width: 6), 
                                    Text(
                                      "Tiempo sin adicciones",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
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
                                      "1234567890",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )
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
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                const Color(0xFF30D5C8).withOpacity(1.0), // Color del degradado más claro
                                const Color(0xFF30D5C8).withOpacity(0.4), // Color del degradado más oscuro
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
                                      Icons.attach_money, // Icono de dinero
                                      size: 22, // Tamaño del icono
                                      color: Colors.white, // Color del icono
                                    ),
                                    SizedBox(width: 4), // Espacio entre el icono y el texto
                                    Text(
                                      "Dinero ahorrado",
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
                                      "12,000",
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
                                      Icons.smoking_rooms_rounded, // Icono de dinero
                                      size: 22, // Tamaño del icono
                                      color: Colors.white, // Color del icono
                                    ),
                                    SizedBox(width: 7), // Espacio entre el icono y el texto
                                    Text(
                                      "Cigarros",
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
                                      "150",
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
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                const Color(0xFF30D5C8).withOpacity(1.0), // Color del degradado más claro
                                const Color(0xFF30D5C8).withOpacity(0.4), // Color del degradado más oscuro
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
                                      Icons.favorite, // Icono de dinero
                                      size: 19, // Tamaño del icono
                                      color: Colors.white, // Color del icono
                                    ),
                                    SizedBox(width: 7), // Espacio entre el icono y el texto
                                    Text(
                                      "Dias extra de vida",
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
                                      "30",
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
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                const Color(0xFF30D5C8).withOpacity(1.0), // Color del degradado más claro
                                const Color(0xFF30D5C8).withOpacity(0.4), // Color del degradado más oscuro
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
                                      Icons.mood, // Icono de dinero
                                      size: 21, // Tamaño del icono
                                      color: Colors.white, // Color del icono
                                    ),
                                    SizedBox(width: 7), // Espacio entre el icono y el texto
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
                                      "Vas muy bien",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
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
