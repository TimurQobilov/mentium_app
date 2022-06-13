import 'package:flutter/material.dart';
import 'package:mentium_app/Secure_Your_Mentium_Wallet.dart';
import 'package:mentium_app/login.dart';

class Legacy_Notice extends StatefulWidget {
  const Legacy_Notice({Key? key}) : super(key: key);

  @override
  State<Legacy_Notice> createState() => _Legacy_NoticeState();
}

class _Legacy_NoticeState extends State<Legacy_Notice> {
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
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Legacy Notice',
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
                  'Please review Mentium’s terms of service',
                  style: TextStyle(
                    fontFamily: 'SFUIDisplay',
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Colors.black54,
                  ),
                ),
                Text(
                  'and privacy policy, then accept to continue',
                  style: TextStyle(
                    fontFamily: 'SFUIDisplay',
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Colors.black54,
                  ),
                ),
                SizedBox(
                  height: 300,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Terms & Conditions'),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Privacy Policy'),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Secure_Your()),
                    );
                  },
                  child: Text('Accept'),
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        side: BorderSide(color: Colors.purple.shade900),
                      ),
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
