import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import '/helpers/user_info.dart';
import '/ui/beranda.dart';
// import '/ui/login_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  var token = await UserInfo().getToken();
  
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform,);

  runApp(MaterialApp(
    title: "Klinik App",
    debugShowCheckedModeBanner: false,
    home: Beranda(),
  ));
}



// class KlinikApp extends StatelessWidget {
//   final String? token;

//   const KlinikApp({this.token});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Klinik APP',
//       debugShowCheckedModeBanner: false,
//       home: token == null ? Login() : Beranda(),
//     );
//   }
// }
