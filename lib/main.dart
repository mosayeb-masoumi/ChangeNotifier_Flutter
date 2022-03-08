import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_flutter/home_page.dart';
import 'package:test_flutter/user_model.dart';
import 'list_model/user_list_model.dart';

void main() {
  runApp(const MyApp());
  runApp(MultiProvider(
    providers: [

      ChangeNotifierProvider<UserObjectModel>(
        create: (context) => UserObjectModel(),
      ),

      ChangeNotifierProvider<UserListModel>(
        create: (context) => UserListModel(),
      ),

    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // return MultiProvider(
    //     providers: [
    //       ChangeNotifierProvider<UserObjectModel>(
    //         create: (context) => UserObjectModel(),
    //       ),
    //     ],

        return  MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(

            primarySwatch: Colors.blue,
          ),
          home: HomePage(),
        );
    // );
  }
}
