
import 'package:flutter/material.dart';


class ResistanceIcon extends StatelessWidget {
  final Color  firstcolor;
  final Color  seconcolor;
  final Color  thirdcolor;
  ResistanceIcon({
    required this.firstcolor,
    required this.seconcolor,

    required this.thirdcolor,
  });
  @override
  Widget build(BuildContext context) {

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 70,
          height: 7,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black,width: 4),
              borderRadius: BorderRadius.circular(10)
          ),
        ),
        Container(
          width: 150,
          height: 50,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black,width: 5),
            borderRadius: BorderRadius.circular(10)
          ),
          child: Row(
            children: [
              SizedBox(
                width: 15,
              ),
              Container(
                height: 50,
                width: 10,
                color: firstcolor,
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                height: 50,
                width: 10,
                color: seconcolor,
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                height: 50,
                width: 10,
                color: thirdcolor,
              ),
              SizedBox(
                width: 50,
              ),
              Container(
                height: 50,
                width: 10,
                color: Colors.orangeAccent.shade400,
              ),
            ],
          ),
        ),
        Container(
          width: 70,
          height: 7,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black,width: 4),
              borderRadius: BorderRadius.circular(10)
          ),
        ),
      ],
    );
  }
}


