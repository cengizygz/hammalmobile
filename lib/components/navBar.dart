import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Remove padding
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Ad Soyad'),
            accountEmail: Text('Kullanıcı.1.@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(),
            ),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 33, 37, 184),
            ),
          ),
          ListTile(
            leading: Icon(Icons.contacts_outlined),
            title: Text('İlanlarım'),
            onTap: () {
              // Navigator.push(
              //  context,
              //MaterialPageRoute(builder: (context) => sepetPage()),
              //  );
            },
          ),
          ListTile(
            leading: Icon(Icons.add_business_outlined),
            title: Text('İlanlara Göz Atın'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.place),
            title: Text('Bölge Değiştir'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Ayarlar'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Çıkış'),
            onTap: () => null,
          ),
        ],
      ),
    );
  }
}
