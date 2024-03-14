import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter/services.dart';

class Bitacora extends StatefulWidget {
  const Bitacora({super.key});

  @override
  State<Bitacora> createState() => _BitacoraState();
}

class _BitacoraState extends State<Bitacora> {
  final List<String> adicciones = [
    'Cigarro',
    'Alcohol',
    'Cigarrillo electrónico',
    'Marihuana',
    'Metanfetamina',
    'Refresco'
  ];

  Set<String> adiccionesSeleccionadas = {};

  DateTime fechaActual = DateTime.now();
  String fechaFormateada = DateFormat('dd/MM/yyyy').format(DateTime.now());

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
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 1),
              child: Container(
                width: 600,
                height: 35,
                decoration: BoxDecoration(
                  color: Colors.black,
                  border: Border.all(color: const Color.fromARGB(255, 6, 166, 153), width: 0.4),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      const Color(0xFF30D5C8).withOpacity(1.0),
                      const Color(0xFF30D5C8).withOpacity(0.5),
                    ],
                  ),
                ),
                child: Center(
                  child: Text(
                    '$fechaFormateada',
                    style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),
            const Text(
              "Selecciona el tipo de adicción que realizaste en el día (puedes seleccionar uno o varios) y responde el siguiente formulario:",
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: adicciones.map((adiccion) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CheckboxListTile(
                      title: Text(adiccion),
                      value: adiccionesSeleccionadas.contains(adiccion),
                      onChanged: (bool? value) {
                        setState(() {
                          if (value != null && value) {
                            adiccionesSeleccionadas.add(adiccion);
                          } else {
                            adiccionesSeleccionadas.remove(adiccion);
                          }
                        });
                      },
                      
                    ),
                    if (adiccionesSeleccionadas.contains(adiccion))
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center, 
                        children: [
                          Center( 
                            child: Container(
                              width: 330,
                              height: 200,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(83, 48, 213, 199),
                                borderRadius: BorderRadius.circular(8),
                                
                              ),
                              padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 18.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    '¿Porque motivos realizaste esta acción?',
                                    style: TextStyle(color: Colors.black87),
                                  ),
                                  SizedBox(height: 10,),
                                  Container(
                                    width: 343,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFEFEDF2),
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    child: Theme(
                                      data: ThemeData(
                                        canvasColor: const Color(0xFFEFEDF2),   
                                      ),
                                      child: DropdownButtonFormField<String>(
                                        decoration: const InputDecoration(
                                          contentPadding: const EdgeInsets.fromLTRB(15.0,2.0, 10.0, 8.0),
                                          border: InputBorder.none,
                                        ),
                                        items: const [
                                          DropdownMenuItem(
                                            value: 'opcion1',
                                            child: Text('Estrés', style:TextStyle(fontSize: 15)),
                                          ),
                                          DropdownMenuItem(
                                            value: 'opcion2',
                                            child: Text('Enojo', style:TextStyle(fontSize: 15)),
                                          ),
                                          DropdownMenuItem(
                                            value: 'opcion3',
                                            child: Text('Tristeza',style:TextStyle(fontSize: 15)),
                                          ),
                                          DropdownMenuItem(
                                            value: 'opcion4',
                                            child: Text('Ansiedad',style:TextStyle(fontSize: 15)),
                                          ),
                                        ],
                                        onChanged: (value) {
                                          print('Opción seleccionada: $value');
                                        },
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
                                  const SizedBox(height: 15,),
                                  const Text(
                                    '¿Cuantas unidades consumió?',
                                    style: TextStyle(color: Colors.black87),
                                  ),
                                  const SizedBox(height: 10,),
                                  Container(
                                    width: 343,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFEFEDF2),
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    child: TextField(
                                       keyboardType: TextInputType.number, // Define el tipo de teclado como numérico
                                      inputFormatters: <TextInputFormatter>[
                                        FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                                      ],
                                      decoration: const InputDecoration(
                                         hintText: 'Ingrese la cantidad',
                                         hintStyle: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400,
                                         ),
                                         contentPadding: EdgeInsets.symmetric(horizontal: 18.0, vertical:11),
                                      ),
                                    ),
                                  ),
                                  
                                ]
                              ),
                            ),
                          ),
                        ],
                      ),
                  ],
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
