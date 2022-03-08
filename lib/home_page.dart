import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_flutter/list_model/student_model.dart';
import 'package:test_flutter/second_page.dart';
import 'package:test_flutter/list_model/user_list_model.dart';
import 'package:test_flutter/user_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  void _updateObjectModel(BuildContext context, UserObjectModel userModel) {
    Provider.of<UserObjectModel>(context,listen: false).updateObjectModel(userModel);
  }

  void _updateListModel(BuildContext context, UserListModel listModel) {
    Provider.of<UserListModel>(context,listen: false).updateListModel(listModel);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: SingleChildScrollView(
          reverse: true,

          child: Column(
            children: [

           SizedBox(height: 70,),
          Align(
            alignment: Alignment.topCenter,
            child: RaisedButton(
                child: Text("set Object data"),
                onPressed: () {
                  setObjectModelData();
                }),
          ),
              SizedBox(height: 20,),
              Align(
                alignment: Alignment.topCenter,
                child: RaisedButton(
                    child: Text("set list data"),
                    onPressed: () {
                      setListModelData();
                    }),
              ),
          SizedBox(height: 20,),
          Align(
            alignment: Alignment.topCenter,
            child: RaisedButton(
            child: Text("next"),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SecondPage()),
              );
            }),
          )],
    ),

    )
    ,
    );
  }


  setObjectModelData() {
    UserObjectModel userModel = new UserObjectModel();
    userModel.name = "reza";
    userModel.family = "hosseini";
    _updateObjectModel(context,userModel);
  }


  void setListModelData() {
    
    List<StudentModel> list = [];
    list.add(new StudentModel("gholi", "ghalai"));
    list.add(new StudentModel("hadi", "mahi"));
    list.add(new StudentModel("jalal", "jalali"));

    
    UserListModel model = new UserListModel();
    model.name = "ali";
    model.family = "mardani";
    model.list = list;
    _updateListModel(context,model);
  }
}
