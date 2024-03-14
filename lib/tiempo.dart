import 'dart:async';

import 'package:flutter/material.dart';

class Tiempo extends StatefulWidget {
  const Tiempo({super.key});

  @override
  State<Tiempo> createState() => _TiempoState();
}

class _TiempoState extends State<Tiempo> {


  int seconds= 0, minutes = 0, hours = 0;
  String digitSeconds = "00" , digitMinutes = "00", digitHours = "00";
  Timer? timer;
  bool started = false; 
  List laps = [];

  void stop(){
    timer!.cancel();
    setState(() {
      started = false;
    });
  }

  void reset(){
    timer!.cancel();
    setState(() {
      seconds = 0;
      minutes = 0;
      hours = 0;

      digitSeconds = "00";
      digitMinutes = "00";
      digitHours = "00";

      started = false;
    });
  }


  void addLaps(){
    String lap = "$digitHours:$digitMinutes:$digitSeconds";
    setState(() {
      laps.add(lap);
    });
  }

  void start(){
    started = true;
    timer = Timer.periodic(Duration(seconds: 1), (timer) { 
      int localSeconds = seconds +1;
      int localMinutes = minutes;
      int localHours = hours;

      if(localSeconds>59){
        if(localMinutes>59){
          localHours++;
          localMinutes = 0;
        }else{
          localMinutes++;
          localSeconds = 0;
        }
      }
      setState(() {
        seconds = localSeconds;
        minutes = localMinutes;
        hours = localHours;
        digitSeconds = (seconds >= 10) ?"$seconds":"0$seconds";
        digitHours = (hours >= 10) ?"$hours":"0$hours";
        digitMinutes = (minutes >= 10) ?"$minutes":"0$minutes";
      });
    });
  }
  
  String obtenerTiempoActualizado() {
    return "$digitHours:$digitMinutes:$digitSeconds";
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: const Text(
          ' Grupos de Ayuda',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  "Stopwatch",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Center(
                child: Text("$digitHours:$digitMinutes:$digitSeconds", 
                style: TextStyle(
                  color: Colors.white, 
                  fontSize: 82.0,
                  fontWeight: FontWeight.w600,
                ),),
              ),
              Container(
                height: 200.0,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(8.0)
                ),
                child: ListView.builder(
                  itemCount: laps.length,
                  itemBuilder: (context, index){
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Lap n°${index+1}",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                            ),
                          ),
                          Text(
                            "${laps[index]}",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: RawMaterialButton(
                      onPressed: () {
                        (!started) ?start():stop();
                      },
                      shape: const StadiumBorder(
                        side: BorderSide(color: Colors.yellow),
                      ),
                      child: Text(
                        (!started) ? "Start" : "Pause",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(width: 8.0,),
                  IconButton(
                    color: Colors.white,
                    onPressed: (){
                      addLaps();
                    }, 
                    icon: Icon(Icons.flag)),
                  Expanded(
                    child: RawMaterialButton(
                      onPressed: () {
                        reset();
                      },
                      fillColor: Colors.yellow,
                      shape: const StadiumBorder(
                      ),
                      child: Text(
                        "Reset",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )
                ],
              )

            ],
          ),
        )),
    );
  }
}

