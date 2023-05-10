import 'package:flutter/material.dart';
import 'package:shrink_sidemenu/shrink_sidemenu.dart';
// ignore: unused_import
import 'package:autism_te/Screen/Side_menu_list.dart';
import 'package:autism_te/Screen/home_icon_buttoms.dart';

import 'Side_menu_list.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<SideMenuState> sideMenuKey = GlobalKey<SideMenuState>();
  @override
  Widget build(BuildContext context) {
    return SideMenu(
      key: sideMenuKey,
      background: Color(0x9F760D16),
      menu: SideMenuList(),
      child: Scaffold(
        //backgroundColor: Colors.black,
          body: SafeArea(
              child: Container(
                decoration:BoxDecoration(image: DecorationImage(image: AssetImage("images/x.jpg"),
                    fit: BoxFit.fill)),
                width: double.infinity,

                child: Column(
                  children: [
                    Stack(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.white24,
                          child: IconButton(
                            icon: Icon(Icons.menu_rounded),
                            color: Color(0x9F760D16),
                            iconSize: 33,
                            onPressed: (){
                              if(sideMenuKey.currentState!.isOpened){
                                sideMenuKey.currentState!.closeSideMenu();
                              }else{
                                sideMenuKey.currentState!.openSideMenu();
                              }
                            },
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 90),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 20),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        CatigoryW(
                                          image: 'images/icon11.png',
                                          text: 'موقع الطفل',
                                          color: Colors.white,
                                        ),
                                        CatigoryW(
                                          image: 'images/icon2.png',
                                          text: 'المراكز',
                                          color: Colors.white,
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        CatigoryW(
                                          image: 'images/icon3.png',
                                          text: 'الإخصائيين',
                                          color: Colors.white,
                                        ),
                                        CatigoryW(
                                          image: 'images/Icon4.png',
                                          text: 'تشخيص الأطفال',
                                          color: Colors.white,
                                        )
                                      ],
                                    ),
                                    SizedBox(height: 20),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        CatigoryW(
                                          image: 'images/icon5.png',
                                          text: 'حجز موعد',
                                          color: Colors.white,
                                        ),
                                        CatigoryW(
                                          image: 'images/Icon6.png',
                                          text: 'Grocery',
                                          color: Colors.white,
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
          )

      ),
    );
  }
}
