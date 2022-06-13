import 'package:flutter/material.dart';
import 'package:mentium_app/Choose_a_Wallet_to_Import.dart';
import 'package:mentium_app/legacy_notice.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                Image(
                  width: 411,
                  image: AssetImage('assets/images/8.jpg'),
                ),
                Text(
                  'Your Gateway',
                  style: TextStyle(
                      fontSize: 48,
                      fontFamily: 'SFUIDisplay',
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  'to Easy ',
                  style: TextStyle(
                      fontSize: 48,
                      fontFamily: 'SFUIDisplay',
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  'Decentralized ',
                  style: TextStyle(
                      fontSize: 48,
                      fontFamily: 'SFUIDisplay',
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  'Finance ',
                  style: TextStyle(
                      fontSize: 48,
                      fontFamily: 'SFUIDisplay',
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  'Invest in stable, high-yield, compliant',
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.black54,
                      fontFamily: 'SFUIDisplay',
                      fontWeight: FontWeight.w400),
                ),
                Text(
                  'DeFi opportunities with minimal risk',
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.black54,
                      fontFamily: 'SFUIDisplay',
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Legacy_Notice()),
                    );
                  },
                  child: Text(
                    'Create a new Mentium wallet',
                    style: TextStyle(
                      fontFamily: 'SFUIDisplay',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Choose_a_Wallet_to_Import()),
                    );
                  },
                  child: Text(
                    'Import an existing wallet',
                    style: TextStyle(
                      fontFamily: 'SFUIDisplay',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
