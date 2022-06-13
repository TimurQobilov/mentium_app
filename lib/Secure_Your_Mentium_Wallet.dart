import 'package:flutter/material.dart';
import 'package:mentium_app/Passcode.dart';
import 'package:mentium_app/legacy_notice.dart';

class Secure_Your extends StatefulWidget {
  const Secure_Your({Key? key}) : super(key: key);

  @override
  State<Secure_Your> createState() => _Secure_YourState();
}

class _Secure_YourState extends State<Secure_Your> {
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
                            builder: (context) => Legacy_Notice()),
                      );
                    },
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Secure Your',
                  style: TextStyle(
                      fontFamily: 'SFUIDisplay',
                      fontWeight: FontWeight.w700,
                      fontSize: 48),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Mentium Wallet',
                  style: TextStyle(
                      fontFamily: 'SFUIDisplay',
                      fontWeight: FontWeight.w700,
                      fontSize: 48),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Secure your crypto with an extra layer of protection',
                  style: TextStyle(
                      fontFamily: 'SFUIDisplay',
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Colors.black54),
                ),
                SizedBox(
                  height: 350,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(
                        image: AssetImage('assets/images/fingerprint.png'),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text('Fingerprint')
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Passcode()),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(
                        image: AssetImage('assets/images/pattern.png'),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text('Passcode')
                    ],
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
