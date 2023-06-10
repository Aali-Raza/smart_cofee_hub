import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../widgets/my_elevated_buton.dart';

class ContactScreen extends StatelessWidget {
  final Uri _url = Uri.parse(
      "whatsapp://send?phone= +923080421565 + &text=hello!\n i want emergency fule ");

  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }

  var urlPhone = "tel://+923055882173}";

  Future<void> makePhoneCall(String url) async {
    if (await canLaunchUrlString(url)) {
      await launchUrlString(url);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Screen'),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MyElevatedButton(
              onpress: () async {
                await _launchUrl();
              },
              text: Text('Contact Seller'),
              color: Colors.white,
              backgroundcolor: Color(0xff0B3385),
            ),SizedBox(height: 30,),
            MyElevatedButton(
              onpress: () async {
                await makePhoneCall(urlPhone);
              },
              text: Text('Call Seller'),
              color: Colors.white,
              backgroundcolor: Color(0xff0B3385),
            ),
          ],
        ),
      ),
    );
  }
}
