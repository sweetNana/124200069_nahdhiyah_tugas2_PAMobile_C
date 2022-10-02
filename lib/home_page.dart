import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'daftar_anggota.dart';
import 'daftar_hobby.dart';
import 'stopwatch.dart';
import 'login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      // title: 'Home Page',
      // home: HomePage(),
      // theme: ThemeData(
      //     appBarTheme: AppBarTheme(
      //         color: Colors.blueGrey
      //     )
      // ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  static String tag = 'home-tag';
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedNavbar = 0;

  void _changeSelectedNavBar(int index) {
    setState(() {
      _selectedNavbar = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final _listPage = <Widget>[
      ListView(
        padding: EdgeInsets.all(20),
        children: [
          ElevatedButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return DaftarAnggota();
              }));
            },
            child: Text('Daftar Anggota'),
          ),

          ElevatedButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return DaftarHobby();
              }));
            },
            child: Text('Daftar Hobi'),
          ),
          ElevatedButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return StopwatchPage();
              }));
            },
            child: Text('Stopwatch'),
          ),
          ElevatedButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return LoginPage();
              }));
            },
            child: Text('Log out'),
          )
        ],
      ),
      ListView(
        padding:
        const EdgeInsets.all(8),
        children: [
          Container(
            height: 500,
            color: Colors.blueGrey.withOpacity(0.6),
            child: const Center(
              child: Text(
                "Aplikasi ini merupakan aplikasi yang dibuat untuk memenuhi penilaian\n"
                    "Tugas 2 pada mata kuliah Pemrograman Aplikasi Mobile.\n"
                    "Pengguna dapat mengakses aplikasi ini dengan langkah-langkah sebagai berikut:\n"
                    "Step 1. Anda bisa Login terlebih dahulu untuk mengakses\n"
                    "Step 2. Setelah itu Anda akan diarahkan ke Homepage.\n"
                    "Di halaman ini anda bisa memilih 4 menu yang tersedia.\n"
                    "Selain itu, Anda juga dapat langsung menuju Homepage dengan\n"
                    "menggunakan Home button yang ada di Bottom Navigation Bar\n"
                    "Anda juga bisa menuju halaman bantuan ini melalui button Help\n"
                    "Step 3. Jika Anda ke menu Daftar Anggota, Anda bisa meliat daftar nama anggota kami\n"
                    "Step 4. Jika Anda ke menu Stopwatch, akan ada Stopwatch yang bisa Anda gunakan\n"
                    "Step 5. Jika Anda ke menu Daftar Hobby, Anda bisa melihat daftar hobi anggota kami\n"
                    "Step 6. Jika Anda menekan Logout, maka Anda akan kembali ke Login Page.\n"
                ,
                style: TextStyle(fontSize: 14.0, color: Colors.black),
              ),
            ),
          )
        ],
      )
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Center(
        child: _listPage[_selectedNavbar],
        // Text("Tab Index yang aktif : $_selectedNavbar",
        // style: TextStyle(fontSize: 16)),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Beranda'),
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.assignment),
          //   title: Text('Pesanan'),
          // ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.mail),
          //   title: Text('Inbox'),
          // ),
          BottomNavigationBarItem(
            icon: Icon(Icons.help),
            title: Text('Help'),

          ),
        ],
        currentIndex: _selectedNavbar,
        selectedItemColor: Colors.blueGrey,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        onTap: _changeSelectedNavBar,
      ),
    );
  }
}
