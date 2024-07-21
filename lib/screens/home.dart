

import 'package:flutter/material.dart';
import 'package:task/models/custome_row.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomeRow(
                const Color.fromARGB(255, 195, 169, 240),
                "سبحان الله"
                
              ),
              CustomeRow(
                const Color.fromARGB(255, 221, 236, 135),
                "الحمد لله"
                
              ),
              CustomeRow(
                 const Color.fromARGB(255, 166, 238, 232),
                "لا أله ألا الله"
              ),
               CustomeRow(
                 const Color.fromARGB(255, 168, 243, 165),
                "الله أكبر"
              ),
              CustomeRow(
                 const Color.fromARGB(255, 243, 84, 172),
                "استغفر الله"
              ),
              CustomeRow(
                
                 const Color.fromARGB(255, 238, 143, 143),
                "لا حول و لا قوة إلا بالله"
              ),

           
              
            ],
          ),
        ),
      );
  }
}