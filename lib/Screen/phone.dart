import 'dart:ui';

import 'package:flutter/material.dart';

class MyPhone extends StatefulWidget {
  const MyPhone({Key? key}) : super(key: key);

  @override
  State<MyPhone> createState() => _MyPhoneState();
}

class _MyPhoneState extends State<MyPhone> {
  TextEditingController countryController = TextEditingController();

  @override
  void initState() {
    countryController.text = "+967";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
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
                            "تسجيل الدخول",
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Container(
                            height: 55,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(width: 1, color: Colors.grey),
                                borderRadius: BorderRadius.circular(10)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const SizedBox(
                                  width: 10,
                                ),
                                SizedBox(
                                  width: 40,
                                  child: TextField(
                                    controller: countryController,
                                    keyboardType: TextInputType.number,
                                    decoration: const InputDecoration(
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                                const Text(
                                  "|",
                                  style: TextStyle(
                                      fontSize: 33, color: Colors.grey),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Expanded(
                                  child: TextField(
                                    keyboardType: TextInputType.phone,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "ادخل رقم هاتفك",
                                      isDense: true,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                              width: 100,
                              height: 45,
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      // backgroundColor: Colors.blueGrey.shade600,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10))),
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
                                      barrierColor:
                                          Colors.black.withOpacity(0.5),
                                      pageBuilder: (_, __, ___) {
                                        return Material(
                                          color: Colors.transparent,
                                          child: Center(
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  // Dialog background

                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                              margin:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 20),
                                              width: double.infinity,
                                              // Dialog width
                                              height: 150,
                                              // Dialog height
                                              child: SingleChildScrollView(
                                                child: Container(
                                                  width: double.infinity,
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 20,
                                                          left: 20,
                                                          right: 20),
                                                  height: 150,
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      const Text(
                                                        'هل هذا رقم صحيح',
                                                        style: TextStyle(
                                                            color:
                                                                Colors.black54),
                                                      ),
                                                      const Text(
                                                          '3875462347865'),
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          TextButton(
                                                            child: const Text(
                                                              'نعم',
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .blueAccent),
                                                            ),
                                                            // minWidth: 0,
                                                            onPressed: () {
                                                              Navigator
                                                                  .pushNamed(
                                                                      context,
                                                                      '/verify');
                                                            },
                                                          ),
                                                          TextButton(
                                                            child: const Text(
                                                              'تعديل',
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .blueAccent),
                                                            ),
                                                            // padding:EdgeInsets.zero,
                                                            // minWidth: 0,
                                                            onPressed: () {
                                                              Navigator
                                                                  .pushNamed(
                                                                      context,
                                                                      '/phone');
                                                            },
                                                          ),
                                                        ],
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    );
                                  },
                                  child: const Text("استمرار")))
                        ])))));
  }
}
