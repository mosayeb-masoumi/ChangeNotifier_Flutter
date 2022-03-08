// import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class UserObjectModel extends ChangeNotifier {
  String _name = "";
  String _family = "";


  UserObjectModel getUserModel(){
    UserObjectModel model = new UserObjectModel();
    model.name = _name;
    model.family = _family;
    return model;
  }

  void updateObjectModel(UserObjectModel model) {
    _name = model.name;
    _family = model.family;
    notifyListeners();
  }

  // getter and setter
  String get name => _name;

  set name(String value) {
    _name = value;
  }

  String get family => _family;

  set family(String value) {
    _family = value;
  }
}
