import 'package:flutter/material.dart';
import 'package:mentium_app/Backup_Your_Wallet.dart';
import 'package:mentium_app/Secure_Your_Mentium_Wallet.dart';

class Passcode extends StatefulWidget {
  const Passcode({Key? key}) : super(key: key);

  @override
  State<Passcode> createState() => _PasscodeState();
}

class _PasscodeState extends State<Passcode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 180,
                  width: 20,
                ),
                CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.purple[900],
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back_ios_new),
                    color: Colors.white,
                    iconSize: 15,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Secure_Your()),
                      );
                    },
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  'Passcode',
                  style: TextStyle(
                      fontFamily: 'SFUIDisplay',
                      fontSize: 24,
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
            SizedBox(
              height: 500,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Backup_Your_Wallet()),
                );
              },
              child: Text(
                'Next',
                style: TextStyle(
                  fontFamily: 'SFUIDisplay',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
