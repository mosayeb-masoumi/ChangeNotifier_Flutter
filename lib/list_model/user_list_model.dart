import 'package:flutter/material.dart';
import 'package:test_flutter/list_model/student_model.dart';


class UserListModel extends ChangeNotifier {

  String _name = "";
  String _family = "";
  List<StudentModel> _list = [];

  UserListModel getListModel(){
    UserListModel model = new UserListModel();
    model.name = _name;
    model.family = _family;
    model.list = _list;
    return model;
  }



  void updateListModel(UserListModel model) {
    _name = model.name;
    _family = model.family;
    _list = model.list;
    notifyListeners();
  }





  // getter setter
  List<StudentModel> get list => _list;

  set list(List<StudentModel> value) {
    _list = value;
  }

  String get family => _family;

  set family(String value) {
    _family = value;
  }

  String get name => _name;

  set name(String value) {
    _name = value;
  }
}