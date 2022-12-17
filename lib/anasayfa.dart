import 'package:flutter/material.dart';
import 'package:tasarim_calismasi/bolum.dart';
import 'package:tasarim_calismasi/my_chip.dart';
import 'package:tasarim_calismasi/renkler.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({Key? key}) : super(key: key);

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    var ekranBilgisi = MediaQuery.of(context);
    final double ekranYuksekligi = ekranBilgisi.size.height;
    final double ekranGenisligi = ekranBilgisi.size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text("Pizza",style: TextStyle(fontFamily: "Pacifico",fontSize: 22),),
        backgroundColor: anaRenk,
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text("Beef Cheese",
            style: TextStyle(fontSize: ekranGenisligi/15,
                color: anaRenk,
                fontWeight: FontWeight.bold),
          ),
          Image.asset("resimler/pizza_resim.png"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly, // aralarında eşit boşluk oluşturduk.
            // left - strat - leading
            // right - end - trailing
            children: [
              MyChip(icerik: "Cheese"),
              MyChip(icerik: "Sausage"),
              MyChip(icerik: "Olive"),
              MyChip(icerik: "Pepper"),

          ],),
        Bolum(yazi1: "20dk", yazi2: "Delivery", yazi3: "Meat lover , get ready to meet pizza!"),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Row(
              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("\$ 5.98", style: TextStyle(fontSize: 44,
                color: anaRenk,
                fontWeight: FontWeight.bold,
                ),
                ),
                const Spacer(),
                SizedBox( width: ekranGenisligi/5,height: ekranYuksekligi/13,
                  // istediğiniz görsel nesneneyi yendien boyutlandır

                  child: TextButton(
                      onPressed: (){},
                      child: Text("ADD TO CART",
                        style:  TextStyle(color: yaziRenk1,
                      fontSize: 18),
                      ),
                    style: TextButton.styleFrom(backgroundColor: anaRenk),
                  ),
                ),

              ],
            ),
          ),

        ],
      ),
    );
  }
}







