import 'package:flutter/material.dart';
import '../model/poli.dart';
import 'poli_detail_page.dart';

class PoliItemPage extends StatelessWidget {
  final Poli poli;

  const PoliItemPage({super.key, required this.poli});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => PoliDetail(poli: poli)),
        );
      },
      child: Card(
        child: ListTile(
          title: Text("${poli.nm_poli}"),
        ),
      ),
    );
  }
}
