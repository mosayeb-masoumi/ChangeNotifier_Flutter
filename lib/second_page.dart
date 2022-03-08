import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_flutter/list_model/user_list_model.dart';
import 'package:test_flutter/user_model.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        reverse: false,
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Consumer<UserObjectModel>(
              builder: (context, userModel, child) {
                return Container(
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                      userModel.getUserModel().name,
                      style: TextStyle(color: Colors.blue, fontSize: 15),
                      textAlign: TextAlign.center,
                    ));
              },
            ),
            SizedBox(
              height: 20,
            ),
            Consumer<UserObjectModel>(
              builder: (context, userModel, child) {
                return Container(
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                      userModel.getUserModel().family,
                      style: TextStyle(color: Colors.blue, fontSize: 15),
                      textAlign: TextAlign.center,
                    ));
              },
            ),
            SizedBox(
              height: 50,
            ),
            Consumer<UserListModel>(
              builder: (context, listModel, child) {
                return Column(
                  children: [
                    Container(
                        width: MediaQuery.of(context).size.width,
                        child: Text(
                          "second item of list is:",
                          style: TextStyle(color: Colors.blue, fontSize: 15),
                          textAlign: TextAlign.center,
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                        width: MediaQuery.of(context).size.width,
                        child: Text(
                          listModel.getListModel().list[1].family,
                          style: TextStyle(color: Colors.blue, fontSize: 15),
                          textAlign: TextAlign.center,
                        )),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
