import 'package:flutter/material.dart';

import 'my_contacts.dart';

class ContactsList extends StatelessWidget {
  const ContactsList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: myContacts
          .map(
            (e) => Padding(
              padding: const EdgeInsets.all(7),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color(0xff08df78),
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: const Icon(
                      Icons.person,
                      size: 28,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Ahmed Mohammed',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        Text(e),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 80),
                    child: TextButton(
                      onPressed: () {},
                      child: const Icon(
                        Icons.call,
                        color: Color(0xff08df78),
                        size: 28,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
          .toList(),
    );
  }
}
