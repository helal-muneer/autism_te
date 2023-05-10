import 'dart:ui';

import 'package:flutter/material.dart';

class Cheeking extends StatefulWidget {
  const Cheeking({Key? key}) : super(key: key);

  @override
  State<Cheeking> createState() => _CheekingState();
}

class _CheekingState extends State<Cheeking> {
  TextEditingController countryController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back_ios_rounded,
              color: Colors.black,
            ),
          ),
          elevation: 0,
        ),
        body: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/x.png"), fit: BoxFit.fill)),
            alignment: Alignment.center,
            child: SingleChildScrollView(
                child: Padding(
                    padding: const EdgeInsets.only(bottom: 220),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(
                            height: 50,
                          ),
                          const Text(
                            "تشخيص حالة طفلك",
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 35,
                          ),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  // backgroundColor: Colors.blueGrey,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10))),
                              onPressed: () {
                                showGeneralDialog(
                                  transitionBuilder:
                                      (ctx, anim1, anim2, child) =>
                                          BackdropFilter(
                                    filter: ImageFilter.blur(
                                        sigmaX: 4 * anim1.value,
                                        sigmaY: 4 * anim1.value),
                                    child: FadeTransition(
                                      opacity: anim1,
                                      child: child,
                                    ),
                                  ),
                                  context: context,
                                  barrierColor: Colors.black.withOpacity(0.5),
                                  pageBuilder: (_, __, ___) {
                                    return Material(
                                      color: Colors.transparent,
                                      child: Center(
                                        child: Container(
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              // Dialog background

                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          margin: const EdgeInsets.symmetric(
                                              horizontal: 20),
                                          width: double.infinity,
                                          // Dialog width
                                          height: 150,
                                          // Dialog height
                                          child: SingleChildScrollView(
                                            child: Container(
                                              width: double.infinity,
                                              padding: const EdgeInsets.only(
                                                  top: 20, left: 20, right: 20),
                                              height: 150,
                                              child: Center(
                                                  child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  const Text(
                                                    'الاسئلة الشائعة',
                                                    style: TextStyle(
                                                        color: Colors.black),
                                                  ),

                                                  // Text('هل انت جاهز لاتبدا'),
                                                  // Row(
                                                  //   mainAxisAlignment: MainAxisAlignment
                                                  //       .spaceBetween,
                                                  //   children: [

                                                  TextButton(
                                                    child: const Text(
                                                      'ابدا',
                                                      style: TextStyle(
                                                          color: Colors
                                                              .blueAccent),
                                                    ),
                                                    // minWidth: 0,
                                                    onPressed: () {
                                                      Navigator.pushNamed(
                                                          context,
                                                          '/question_model');
                                                    },
                                                  ),
                                                ],
                                              )),
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                );
                              },
                              child: Text("ابدأ"))
                        ])))));
  }
}
