import 'package:flutter/material.dart';
import 'package:flutter_task2/main.dart';
import 'package:flutter_task2/page2/my_contacts.dart';

import 'model.dart';
import 'my_conatiner.dart';

String data = '';

class DialPage extends StatefulWidget {
  const DialPage({Key? key}) : super(key: key);

  @override
  State<DialPage> createState() => _DialPageState();
}

class _DialPageState extends State<DialPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 90),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              data,
              style: const TextStyle(
                color: Color(
                  0xff81808e,
                ),
                fontSize: 32,
              ),
            ),
            TextButton(
              onPressed: () {
                myContacts.add(data);
              },
              child: const Text(
                '+ Add to contacts',
                style: TextStyle(
                  fontSize: 18,
                  color: Color(0xff08df78),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: PhoneData.buttons1
                  .map(
                    (e) => TextButton(
                      onPressed: () {
                        data = data + e.value;
                        setState(() {});
                      },
                      child: MyContainer(
                        number: e.value,
                        title: e.subLable,
                      ),
                    ),
                  )
                  .toList(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: PhoneData.buttons2
                  .map(
                    (e) => TextButton(
                      onPressed: () {
                        data = data + e.value;
                        setState(() {});
                      },
                      child: MyContainer(
                        number: e.value,
                        title: e.subLable,
                      ),
                    ),
                  )
                  .toList(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: PhoneData.buttons3
                  .map(
                    (e) => TextButton(
                      onPressed: () {
                        data = data + e.value;
                        setState(() {});
                      },
                      child: MyContainer(
                        number: e.value,
                        title: e.subLable,
                      ),
                    ),
                  )
                  .toList(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: PhoneData.buttons4
                  .map(
                    (e) => TextButton(
                      onPressed: () {
                        data = data + e.value;
                        setState(() {});
                      },
                      child: MyContainer(
                        number: e.value,
                        title: e.subLable,
                      ),
                    ),
                  )
                  .toList(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MyHomePage2(),
                      ),
                    );
                  },
                  child: const Icon(
                    Icons.groups_outlined,
                    color: Color(0xff81808e),
                    size: 30,
                  ),
                ),
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: const Color(0xff08df78),
                  ),
                  child: const Icon(
                    Icons.call,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    data = data.substring(0, data.length - 1);
                    setState(() {});
                  },
                  child: const Icon(
                    Icons.backspace_outlined,
                    color: Color(0xff81808e),
                    size: 30,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            )
          ],
        ),
      ),
    );
  }
}




