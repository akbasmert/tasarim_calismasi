import 'package:flutter/material.dart';
import 'package:tasarim_calismasi/renkler.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({Key? key}) : super(key: key);

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pizza",style: TextStyle(fontFamily: "Pacifico",fontSize: 22),),
        backgroundColor: anaRenk,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Text("Beef Cheese",
            style: TextStyle(fontSize: 36,
                color: anaRenk,
                fontWeight: FontWeight.bold),
          ),
          Image.asset("resimler/pizza_resim.png"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly, // aralarında eşit boşluk oluşturduk.
            // left - strat - leading
            // right - end - trailing
            children: [
              TextButton(onPressed: (){},
                  child: Text("Cheese",
                  style: TextStyle(color: yaziRenk1),
                  ),
              style: TextButton.styleFrom(
                backgroundColor: anaRenk,
                shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20)))
              ),
              ),
            TextButton(onPressed: (){},
              child: Text("Sausage",
                style: TextStyle(color: yaziRenk1),
              ),
              style: TextButton.styleFrom(
                  backgroundColor: anaRenk,
                  shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20)))
              ),
            ),
            TextButton(onPressed: (){},
              child: Text("Olive",
                style: TextStyle(color: yaziRenk1),
              ),
              style: TextButton.styleFrom(
                  backgroundColor: anaRenk,
                  shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20)))
              ),
            ),
            TextButton(onPressed: (){},
              child: Text("Pepper",
                style: TextStyle(color: yaziRenk1),
              ),
              style: TextButton.styleFrom(
                  backgroundColor: anaRenk,
                  shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20)))
              ),
            ),
          ],),

        ],
      ),
    );
  }
}