
import 'package:contact/model/contact.dart';
import 'package:flutter/material.dart';

class Contactprovider extends ChangeNotifier {
  static List<Contact> allcontact = [];
  List <Contact> get contact => [];
  static List<Contact> savecontact = [];

  void add_contact(Contact add){
    allcontact.add(add);
    notifyListeners();
  }
  void removeContact(Contact v1){
    allcontact.remove(v1);
    notifyListeners();
  }
  void addsavecontact(Contact add) {
    savecontact.add(add);
    notifyListeners();
  }
}
