import 'package:flutter/material.dart';
import '../model/poli.dart';
// import 'poli_detail_page.dart';
import 'poli_item_page.dart';
import 'poli_form_page.dart';
import '../widget/sidebar.dart';

class PoliPage extends StatefulWidget {
  const PoliPage({super.key});

  @override
  State<PoliPage> createState() => _PoliPageState();
}

class _PoliPageState extends State<PoliPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Sidebar(),
      appBar: AppBar(
        title: const Text("Data Poli"),
        backgroundColor: Colors.lightBlue,
        foregroundColor: Colors.white,
        actions: [
          GestureDetector(
            child: const Padding(
              padding: EdgeInsets.only(right: 20),
              child: Icon(Icons.add),
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => PoliForm()));
            },
          )
        ],
      ),
      body: ListView(
        children: [
          PoliItemPage(poli: Poli(nm_poli: "Poli Anak")),
          PoliItemPage(poli: Poli(nm_poli: "Poli Kandungan")),
          PoliItemPage(poli: Poli(nm_poli: "Poli Gigi")),
          PoliItemPage(poli: Poli(nm_poli: "Poli THT"))
        ],
      ),
    );
  }
}
