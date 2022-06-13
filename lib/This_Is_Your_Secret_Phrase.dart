import 'package:flutter/material.dart';
import 'package:mentium_app/Backup_Your_Wallet.dart';
import 'package:mentium_app/Please_Verify_Your_Secret_Phrase.dart';

class This_Is_Your_Secret_Phrase extends StatefulWidget {
  const This_Is_Your_Secret_Phrase({Key? key}) : super(key: key);

  @override
  State<This_Is_Your_Secret_Phrase> createState() =>
      _This_Is_Your_Secret_PhraseState();
}

class _This_Is_Your_Secret_PhraseState
    extends State<This_Is_Your_Secret_Phrase> {
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
                        MaterialPageRoute(
                            builder: (context) => Backup_Your_Wallet()),
                      );
                    },
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  'This Is Your',
                  style: TextStyle(
                      fontFamily: 'SFUIDisplay',
                      fontSize: 48,
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  'Secret Phrase ',
                  style: TextStyle(
                      fontFamily: 'SFUIDisplay',
                      fontSize: 48,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Write these 12 words down or keep them',
                  style: TextStyle(
                      fontFamily: 'SFUIDisplay',
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.black54),
                ),
                Text(
                  'in a secure password manager',
                  style: TextStyle(
                      fontFamily: 'SFUIDisplay',
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.black54),
                ),
              ],
            ),
            SizedBox(
              height: 350,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Please_Verify_Your_Secret_Phrase()),
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
