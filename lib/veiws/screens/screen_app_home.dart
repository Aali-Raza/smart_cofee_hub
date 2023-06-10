// import 'package:e_commerece_app/views/layouts/layout_app_profile.dart';
// import 'package:flutter/material.dart';
// import 'package:google_nav_bar/google_nav_bar.dart';
//
// import '../layouts/layout_app_history.dart';
// import '../layouts/layout_app_home.dart';
// import '../layouts/layout_user_chat.dart';
//
//
//
// class ScreenAppHome extends StatefulWidget {
//   @override
//   _ScreenAppHomeState createState() => _ScreenAppHomeState();
// }
//
// class _ScreenAppHomeState extends State<ScreenAppHome> {
//   var Screens=[
//     LayoutAppHome(),
//     LayoutAppProfile(),
//     LayoutAppHistory(),
//     LayoutUserChat()
//
//   ];
//   int _selectedIndex = 0;
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//         child: Scaffold(
//             body:Screens[_selectedIndex],
//
//             bottomNavigationBar: Container(
//               decoration: BoxDecoration(
//                 color: Colors.red,
//                 boxShadow: [
//                   BoxShadow(
//                     blurRadius: 20,
//                     color: Colors.black.withOpacity(.1),
//                   )
//                 ],
//               ),
//               child: GNav(
//                 rippleColor: Colors.grey[300]!,
//                 hoverColor: Colors.yellow[100]!,
//                 gap: 0,
//                 activeColor: Colors.white,
//                 iconSize: 30,
//                 padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
//                 duration: Duration(milliseconds: 400),
//                 tabBackgroundColor: Colors.white,
//                 color: Colors.white,
//                 tabs: [
//                   GButton(
//                     icon: Icons.home,
//                     text: 'Home',iconActiveColor: Colors.red,textColor: Colors.red,
//                   ),
//                   GButton(
//                     icon: Icons.person,
//                     text: 'Profile',iconActiveColor: Colors.red,textColor: Colors.red,
//                   ),
//                   GButton(
//                     icon: Icons.work_history,
//                     text: 'History',iconActiveColor: Colors.red,textColor: Colors.red,
//                   ),
//                   GButton(
//                     icon: Icons.wechat_sharp,
//                     text: 'Chats',iconActiveColor: Colors.red,textColor: Colors.red,
//                   ),
//                 ],
//                 selectedIndex: _selectedIndex,
//                 onTabChange: (value){
//                   setState(() {
//                     _selectedIndex = value;
//                   });
//                 },
//               ),
//             )));
//   }
// }
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_cofee_hub/veiws/screens/screen_app_contact.dart';

import '../../widgets/custom_fule_container.dart';

class ScreenAppHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Fuel Screen'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              CustomFuleContainer(
                imageName: 'logo',
                tittle: 'Black coffee',
                time: '15',
                onTap: () {},
                price: '270',
              ),

              CustomFuleContainer(
                imageName: 'logo',
                tittle: 'Brown coffee',
                time: '15',
                onTap: () {
Get.to(ContactScreen());
                },
                price: '400',
              ),
              CustomFuleContainer(
                imageName: 'logo',
                tittle: 'white coffee',
                time: '15',
                onTap: () {},
                price: '270',
              ),
              CustomFuleContainer(
                imageName: 'logo',
                tittle: 'Desile',
                time: '20',
                onTap: () {},
                price: '310',
              ),
            ],
          ),
        ));
  }
}
