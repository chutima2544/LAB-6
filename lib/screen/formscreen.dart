import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({Key? key}) : super(key: key);

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("แบบฟอร์มรายการ"),
        ),
        body: Container(
          padding: EdgeInsets.all(20),
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("รายการ",style: TextStyle(fontSize: 20),),
                TextFormField(),
                SizedBox(
                  height: 15,
                ),
                Text("รายรับ",style: TextStyle(fontSize: 20),),
                TextFormField(),
                SizedBox(
                  height: 15,
                ),
                Text("รายจ่าย",style: TextStyle(fontSize: 20),),
                TextFormField(),
                SizedBox(
                  height: 15,
                ),
                Text("คงเหลือ",style: TextStyle(fontSize: 20),),
                TextFormField(),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    child: Text("บันทึกข้อมูล",
                    style: TextStyle(fontSize: 20),
                    ),
                    onPressed: (){}
                    ),
                )
              ],
            ),
          ),
        ),
    );
  }
}