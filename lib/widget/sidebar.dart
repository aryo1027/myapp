import 'package:flutter/material.dart';
import '../ui/beranda.dart';
import '../ui/login_page.dart';
import '../ui/poli_page.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          _createHeader(),
          _createDrawerItem(icon: Icons.home, text: 'Beranda', onTap: () => _navigateTo(context, Beranda())),
          _createDrawerItem(icon: Icons.accessible, text: 'Poli', onTap: () => _navigateTo(context, PoliPage())),
          _createDrawerItem(icon: Icons.people, text: 'Pegawai', onTap: () {}),
          _createDrawerItem(icon: Icons.account_box_sharp, text: 'Pasien', onTap: () {}),
          _createDrawerItem(icon: Icons.logout_rounded, text: 'Keluar', onTap: () => _logout(context)),
        ],
      ),
    );
  }

  Widget _createHeader() {
    return UserAccountsDrawerHeader(
      accountName: Text("Admin"),
      accountEmail: Text("admin@admin.com"),
      decoration: BoxDecoration(
        color: Colors.lightBlue,
      )
      
    );
  }

  Widget _createDrawerItem({required IconData icon, required String text, required GestureTapCallback onTap}) {
    return ListTile(
      leading: Icon(icon),
      title: Text(text),
      onTap: onTap,
    );
  }

  void _navigateTo(BuildContext context, Widget page) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => page));
  }

  void _logout(BuildContext context) {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => Login()),
      (Route<dynamic> route) => false,
    );
  }
}
