import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mentium_app/This_Is_Your_Secret_Phrase.dart';

class Backup_Your_Wallet extends StatefulWidget {
  const Backup_Your_Wallet({Key? key}) : super(key: key);

  @override
  State<Backup_Your_Wallet> createState() => _Backup_Your_WalletState();
}

class _Backup_Your_WalletState extends State<Backup_Your_Wallet> {
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
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Backup Your',
                  style: TextStyle(
                    fontFamily: 'SFUIDisplay',
                    fontWeight: FontWeight.w700,
                    fontSize: 48,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Wallet',
                  style: TextStyle(
                    fontFamily: 'SFUIDisplay',
                    fontWeight: FontWeight.w700,
                    fontSize: 48,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text('In the next step you’ll see a phrase made of 12 words.'),
                Text('This phrase is the key to you wallet.'),
                Text('If your phone is lost or stolen, this phrase will allow'),
                Text('you to reciver your wallet and funds'),
                SizedBox(
                  height: 250,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        // Checkbox(
                        //   value: this.value,
                        //   onChanged: (bool value) {
                        //     setState(() {
                        //       this.value = value;
                        //     });
                        //   },
                        // ),
                        SizedBox(
                          width: 20,
                        ),
                        Text('I understand that if I lose my secret words,'),
                        Text('I will not be able to access my wallet.'),
                        SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      This_Is_Your_Secret_Phrase()),
                            );
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [Text('Skip Backup')],
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [Text('Backup')],
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
