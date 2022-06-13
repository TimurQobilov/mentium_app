import 'package:flutter/material.dart';
import 'package:mentium_app/This_Is_Your_Secret_Phrase.dart';
import 'package:mentium_app/Your_Mentium_Wallet_Is_Ready.dart';

class Please_Verify_Your_Secret_Phrase extends StatefulWidget {
  const Please_Verify_Your_Secret_Phrase({Key? key}) : super(key: key);

  @override
  State<Please_Verify_Your_Secret_Phrase> createState() =>
      _Please_Verify_Your_Secret_PhraseState();
}

class _Please_Verify_Your_Secret_PhraseState
    extends State<Please_Verify_Your_Secret_Phrase> {
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
                            builder: (context) => This_Is_Your_Secret_Phrase()),
                      );
                    },
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  'Please Verify',
                  style: TextStyle(
                      fontFamily: 'SFUIDisplay',
                      fontSize: 48,
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  'Your Secret',
                  style: TextStyle(
                      fontFamily: 'SFUIDisplay',
                      fontSize: 48,
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  'Phrase',
                  style: TextStyle(
                      fontFamily: 'SFUIDisplay',
                      fontSize: 48,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Select words in the correct order',
                  style: TextStyle(
                      fontFamily: 'SFUIDisplay',
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.black54),
                ),
              ],
            ),
            SizedBox(
              height: 300,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Your_Mentium_Wallet_Is_Ready()),
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
