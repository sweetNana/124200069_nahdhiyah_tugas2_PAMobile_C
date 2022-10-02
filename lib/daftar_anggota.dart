import 'package:flutter/material.dart';

class DaftarAnggota extends StatelessWidget {
  const DaftarAnggota({Key key}) : super(key: key);
  static String tag = 'daftar_anggota-tag';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            title: Text("Daftar Anggota"),
            centerTitle: true
        ),
        body:
        Container(
          child: Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: GridView(
              gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              children: [

                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: SizedBox.fromSize(
                    size: Size.fromRadius(50),
                    child:
                    Image.asset(
                      "images/ni.png",
                      height: 100,
                      width: 100,
                    ),
                  ),
                ),
                Text(
                  "Nugraheni Nur W.\n 124200004\n",
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.black),
                ),

                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: SizedBox.fromSize(
                    size: Size.fromRadius(50),
                    child:
                    Image.asset(
                      "images/kel.jpeg",
                      height: 100,
                      width: 100,
                    ),
                  ),
                ),
                Text(
                  "Haikel Radipta K.\n 124200062\n",
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.black),
                ),

                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: SizedBox.fromSize(
                    size: Size.fromRadius(50),
                    child:
                    Image.asset(
                      "images/yah.png",
                      height: 100,
                      width: 100,
                    ),
                  ),
                ),
                Text(
                  "Nahdiyah\n 124200069\n",
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.black),
                ),
              ],
            ),
          ),
        )
    );
  }
}
