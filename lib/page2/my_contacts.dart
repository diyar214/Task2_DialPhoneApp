import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'contacts_list.dart';
import 'my_navgation_bar.dart';

List<String> myContacts = [];

class Contacts extends StatefulWidget {
  const Contacts({Key? key}) : super(key: key);

  @override
  State<Contacts> createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
        ),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_sharp,
            color: Colors.black,
            size: 22,
          ),
        ),
        title: Text(
          'contacts'.toUpperCase(),
          style: const TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        titleSpacing: 6,
        toolbarHeight: 35,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 25),
            child: Icon(Icons.grid_view,color: Colors.black38,
              size: 22,),
          ),

          Padding(
            padding: EdgeInsets.only(right: 8),
            child: Icon(Icons.list_outlined,color: Colors.black,
              size: 22,),
          ),

        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 60,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            Expanded(
              child: ContactsList(),
            ),
            MyNavigationBar(),
          ],
        ),
      ),
    );
  }
}