import 'package:flutter/material.dart';
import 'package:smart_class/add.dart';
import 'camera.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Smart Class"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => const add()));
        },
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.blue,
        shape: CircularNotchedRectangle(),
        notchMargin: 5,
        child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.home,
                    color: Color.fromARGB(255, 2, 16, 41),
                  )),
              IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const camera()));
                  },
                  icon: Icon(
                    Icons.camera,
                    color: Color.fromARGB(255, 2, 16, 41),
                  )),
            ]),
      ),
      drawer: Drawer(
        backgroundColor: Color.fromARGB(255, 188, 217, 242),
        child: Column(
          children: [
            Container(
              height: 200,
              alignment: Alignment.center,
              width: double.infinity,
              color: Color.fromARGB(255, 109, 209, 245),
              child: Text(
                "Selamat Datang Di Aplikasi Smart Class",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontStyle: FontStyle.normal,
                    color: Color.fromARGB(255, 1, 45, 87),
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2,
                    fontSize: 25),
              ),
            ),
            ListTile(
                onTap: () {},
                leading: Icon(Icons.people),
                title: Text("Profile")),
            ListTile(
                onTap: () {},
                leading: Icon(Icons.info),
                title: Text("Data Aplikasi")),
            ListTile(
                onTap: () {},
                leading: Icon(Icons.logout),
                title: Text("LogOut"))
          ],
        ),
      ),
    );
  }
}
