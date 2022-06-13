import 'package:flutter/material.dart';
import 'package:mentium_app/Please_Verify_Your_Secret_Phrase.dart';
import 'package:mentium_app/login.dart';

class Your_Mentium_Wallet_Is_Ready extends StatefulWidget {
  const Your_Mentium_Wallet_Is_Ready({Key? key}) : super(key: key);

  @override
  State<Your_Mentium_Wallet_Is_Ready> createState() =>
      _Your_Mentium_Wallet_Is_ReadyState();
}

class _Your_Mentium_Wallet_Is_ReadyState
    extends State<Your_Mentium_Wallet_Is_Ready> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
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
                            builder: (context) =>
                                Please_Verify_Your_Secret_Phrase()),
                      );
                    },
                  ),
                ),
              ],
            ),
            Container(
              child: Image(
                image: AssetImage('assets/images/mogo.jpg'),
              ),
            ),
            Text(
              'Your Mentium',
              style: TextStyle(
                fontFamily: 'SFUIDisplay',
                fontWeight: FontWeight.w700,
                fontSize: 48,
              ),
            ),
            Text(
              'Wallet Is Ready!',
              style: TextStyle(
                fontFamily: 'SFUIDisplay',
                fontWeight: FontWeight.w700,
                fontSize: 48,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Login()),
                );
              },
              child: Text(
                'Done',
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
