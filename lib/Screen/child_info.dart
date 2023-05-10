import 'package:flutter/material.dart';
import '../Constant/myTextField.dart';

class Child_info extends StatefulWidget {
  const Child_info({Key? key}) : super(key: key);

  @override
  @override
  State<Child_info> createState() => _Child_infoState();
}

class _Child_infoState extends State<Child_info> {
  TextEditingController countryController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(left: 12, right: 12, top: 30),
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('images/y.jpg'),
                  backgroundColor: Colors.greenAccent,
                  radius: 70,
                ),
                SizedBox(
                  height: 1,
                ),
                Text(
                  "الرجاء ادخال بيانات الطفل بشكل صحيح",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                MyTextField(
                  icon: Icons.person,
                  hintText: 'اسم الطفل',
                ),
                MyTextField(
                  icon: Icons.calendar_month_outlined,
                  hintText: 'العمر',
                ),
                MyTextField(
                  icon: Icons.phone,
                  hintText: 'الهاتف',
                ),
                MyTextField(
                  icon: Icons.house,
                  hintText: 'العنوان',
                ),
                MyTextField(
                  icon: Icons.family_restroom,
                  hintText: 'ولي الامر',
                ),
                MyTextField(
                  icon: Icons.family_restroom,
                  hintText: 'صلة القرابة',
                ),
                SizedBox(
                  height: 25,
                ),
                SizedBox(
                  width: 120,
                  height: 49,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.blueGrey,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                      onPressed: () {
                        Navigator.pushNamed(context, '/cheeking');
                      },
                      child: Text("استمرار")),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
