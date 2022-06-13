import 'package:flutter/material.dart';
import 'package:mentium_app/Choose_a_Wallet_to_Import.dart';

class Import_Mentium_Wallet extends StatefulWidget {
  const Import_Mentium_Wallet({Key? key}) : super(key: key);

  @override
  State<Import_Mentium_Wallet> createState() => _Import_Mentium_WalletState();
}

class _Import_Mentium_WalletState extends State<Import_Mentium_Wallet> {
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
                            builder: (context) => Choose_a_Wallet_to_Import()),
                      );
                    },
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  'Import Mentium',
                  style: TextStyle(
                    fontFamily: 'SFUIDisplay',
                    fontWeight: FontWeight.w700,
                    fontSize: 48,
                  ),
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
                  height: 20,
                ),
                Text(
                  'To import your wallet type your secret phrase',
                  style: TextStyle(
                      fontFamily: 'SFUIDisplay',
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Colors.black54),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Type your secret phrase...',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
