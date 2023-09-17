
import 'package:contact/provider/contact.dart';
import 'package:flutter/material.dart';

class savecontact extends StatefulWidget {
  savecontact({Key? key}) : super(key: key);

  @override
  State<savecontact> createState() => _savecontactState();
}

class _savecontactState extends State<savecontact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: Contactprovider.savecontact.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(
              "${Contactprovider.savecontact[index].Firstname}",
              style: TextStyle(
                  color: const Color.fromARGB(255, 23, 18, 18)),
            ),
            subtitle: Text(
                "${Contactprovider.savecontact[index].MobileNumber}"),
          );
        },
      ),
    );
  }
}
