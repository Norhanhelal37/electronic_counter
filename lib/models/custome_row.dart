// ignore_for_file: non_constant_identifier_names

import "package:flutter/material.dart";
import "package:task/models/custome_container.dart";

class CustomeRow extends StatefulWidget {
  final Color my_color;
  final String title;
  CustomeRow(this.my_color, this.title);

  
  // Color my_color;
  @override
  State<CustomeRow> createState() => _CustomeRowState();
}

class _CustomeRowState extends State<CustomeRow> {
  int num = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [

          Box(
            high: 70,
            wid: 80,
            chil:num ,
            my_color: widget.my_color,
            font: 30 ,
            
            ),

          Box(
          high: 70 ,
          wid: 200, 
          chil: widget.title, 
          my_color: widget.my_color,
          font: 24,
          )
         
          ,
          CircleAvatar(
            maxRadius: 40,
            backgroundColor: widget.my_color,
            child: IconButton(
              icon: Icon(Icons.add, size: 34,),
              onPressed: () {
                setState(() {
                  num++;
                });
              },
            ),
          )
        ],
      ),
    );
  }
}
