import 'package:flutter/material.dart';
import 'package:tasarim_calismasi/renkler.dart';

class Bolum extends StatelessWidget {
String yazi1;
String yazi2;
String yazi3;
Bolum({required this.yazi1,required this.yazi2,required this.yazi3});


  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(left: 16,right: 16),
      child: Column(
        children: [
          Text(yazi1,
            style: TextStyle(fontSize: 22,
                color: yaziRenk2,
                fontWeight: FontWeight.bold),
          ),
          Text(yazi2,
            style: TextStyle(fontSize: 22,
                color: anaRenk,
                fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16,bottom: 16),
            child: Text(yazi3,
              style: TextStyle(fontSize: 22,
                  color: yaziRenk2),
              textAlign: TextAlign.center,
            ),
          )

        ],
      ),
    );
  }
}
