import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

Random random = Random();
int x = 0;

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      home: Scaffold(

        appBar: AppBar(
          title: const Center(child: Text("Number chooser!!",style: TextStyle(fontFamily: 'LibreBaskerville',color: Color.fromARGB(244, 235, 220, 220)),),
          ),
          backgroundColor: Colors.purple,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Choosen num is: 4",
                style: TextStyle(
                  fontSize: 38,
                  fontFamily: 'LibreBaskerville',
                  color: Color.fromARGB(255, 55, 0, 206),
                ),
              ),
              // Text(x == 4
              //     ? 'You choose right num  '
              //     : '$x Wrong guess try again'),

              const SizedBox(height: 20,),
              Container(
                height: 200,
                width: 300,
              
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                    color: const Color.fromARGB(255, 231, 228, 228),
                ),
                child: x == 4
                    ? const Column(
                        children: [Text("You choose right num: 4",style: TextStyle(fontSize: 25,color: Colors.green),),Icon(Icons.done_all_outlined,color: Colors.green,size: 100,)],
                        
                      )
                    :   Column(
                        children: [Text(" $x Wrong guess try again",style: const TextStyle(fontSize: 25,color: Colors.red)),const Icon(Icons.highlight_off,color: Colors.red,size: 100,)],
                      ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            x = random.nextInt(5) + 1;
            setState(() {});
          },
          backgroundColor: Colors.purpleAccent,
          child: const Icon(Icons.refresh,color: Color.fromARGB(255, 6, 0, 7),),
        ),
      ),
    );
  }
}
