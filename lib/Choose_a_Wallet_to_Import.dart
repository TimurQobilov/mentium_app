import 'package:flutter/material.dart';
import 'package:mentium_app/Import_Mentium_Wallet.dart';
import 'package:mentium_app/Import_Metamask_Wallet.dart';
import 'package:mentium_app/login.dart';

class Choose_a_Wallet_to_Import extends StatefulWidget {
  const Choose_a_Wallet_to_Import({Key? key}) : super(key: key);

  @override
  State<Choose_a_Wallet_to_Import> createState() =>
      _Choose_a_Wallet_to_ImportState();
}

class _Choose_a_Wallet_to_ImportState extends State<Choose_a_Wallet_to_Import> {
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
                        MaterialPageRoute(builder: (context) => Login()),
                      );
                    },
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  'Choose a Wallet',
                  style: TextStyle(
                    fontFamily: 'SFUIDisplay',
                    fontWeight: FontWeight.w700,
                    fontSize: 48,
                  ),
                ),
                Text(
                  'to Import',
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
                  'Mentium can import many kinds of wallets.',
                  style: TextStyle(
                    fontFamily: 'SFUIDisplay',
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Colors.black54,
                  ),
                ),
                Text(
                  'To make sure you can correctly access your funds,',
                  style: TextStyle(
                    fontFamily: 'SFUIDisplay',
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Colors.black54,
                  ),
                ),
                Text(
                  'please choose the correct type of wallet to import.',
                  style: TextStyle(
                    fontFamily: 'SFUIDisplay',
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(
                        image: AssetImage('assets/images/logo.png'),
                        width: 20,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      FlatButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      Import_Mentium_Wallet()));
                        },
                        child: new Text(
                          'Mentium wallet',
                          style: TextStyle(
                            fontFamily: 'SFUIDisplay',
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Divider(
                    height: 2,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(
                        image: AssetImage('assets/images/Fox.png'),
                        width: 25,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      FlatButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Import_Metamask_Wallet()),
                          );
                        },
                        child: new Text(
                          "Metamask",
                          style: TextStyle(
                            fontFamily: 'SFUIDisplay',
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
