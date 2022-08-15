import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_03/model/money.dart';
import 'package:form_field_validator/form_field_validator.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({Key key}) : super(key: key);

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {

  final formKey = GlobalKey<FormState>();
  Money myMoney = Money();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("แบบฟอร์มรายการ"),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "รายการ",
                  style: TextStyle(fontSize: 20),
                ),
                TextFormField(
                  validator: RequiredValidator(errorText: "กรุณาใส่รายการ"),
                  onSaved: (String name){
                    myMoney.name = name;
                  },
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "รายรับ",
                  style: TextStyle(fontSize: 20),
                ),
                TextFormField(
                  validator: RequiredValidator(errorText: "กรุณาใส่รายรับ"),
                  onSaved: (String revenue){
                    myMoney.revenue = revenue;
                  },
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "รายจ่าย",
                  style: TextStyle(fontSize: 20),
                ),
                TextFormField(
                  validator: RequiredValidator(errorText: "กรุณาใส่รายจ่าย"),
                  onSaved: (String expenses){
                    myMoney.expenses = expenses;
                  },
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "คงเหลือ",
                  style: TextStyle(fontSize: 20),
                ),
                TextFormField(
                  validator: RequiredValidator(errorText: "กรุณาใส่ยอดคงเหลือ"),
                  onSaved: (String remain){
                    myMoney.remain = remain;
                  },
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      child: Text(
                        "บันทึกข้อมูล",
                        style: TextStyle(fontSize: 20),
                      ),
                      onPressed: () {
                        if(formKey.currentState.validate()){
                          formKey.currentState.save();
                        print("ข้อมูล = ${myMoney.name}${myMoney.revenue}${myMoney.expenses}${myMoney.remain}");
                        }                     
                      }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
