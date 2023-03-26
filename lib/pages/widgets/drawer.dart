import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Mydrawer extends StatelessWidget {
  final imgurl =
      "https://scontent.fbom12-1.fna.fbcdn.net/v/t39.30808-6/337121577_884993542793319_2584073161737010227_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=730e14&_nc_ohc=d5ZNtARRiLsAX8_Q1wT&_nc_ht=scontent.fbom12-1.fna&oh=00_AfBF33ucJXPYW9pCs024PEuw0ybrfSyLVEtfNBlO10o1PA&oe=6422EF4C";
  const Mydrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(

      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                accountName: const Text("Mohammed Ayan Shaikh"),
                accountEmail: const Text("accountEmail"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imgurl),
                ),
                decoration: const BoxDecoration(color: Colors.deepPurple),
              ),
            ),
            const ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            ),
            const ListTile(
              leading: Icon(
                CupertinoIcons.person_solid,
                color: Colors.white,
              ),
              title: Text(
                "Profile",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            ),
            const ListTile(
              leading: Icon(
                CupertinoIcons.envelope_circle_fill,
                color: Colors.white,
              ),
              title: Text(
                "Email me ",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
