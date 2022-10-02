import 'package:flutter/material.dart';

class DaftarHobby extends StatelessWidget {
  const DaftarHobby({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            title: Text("Daftar Hobby"),
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
                      "images/hen.png",
                      height: 100,
                      width: 100,
                    ),
                  ),
                ),
                Text(
                  "Nugraheni Nur W.\n 124200004\n Nonton series\n & anime, Fotografi",
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.black),
                ),

                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: SizedBox.fromSize(
                    size: Size.fromRadius(50),
                    child:
                    Image.asset(
                      "images/hai.png",
                      height: 100,
                      width: 100,
                    ),
                  ),
                ),
                Text(
                  "Haikel Radipta K.\n 124200062\n Nonton film,\n Fotografi, Ngegame",
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.black),
                ),

                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: SizedBox.fromSize(
                    size: Size.fromRadius(50),
                    child:
                    Image.asset(
                      "images/nah.png",
                      height: 100,
                      width: 100,
                    ),
                  ),
                ),
                Text(
                  "Nahdiyah\n 124200069\n Jogging",
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.black),
                ),
              ],
            ),
          ),
        )
    );
  }
}
