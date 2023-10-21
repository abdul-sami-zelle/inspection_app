import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sign_up_page_2/multi.dart';
import 'package:sign_up_page_2/screens/history_sheet.dart';

class Popup extends StatelessWidget {
  const Popup({super.key});

  @override
  Widget build(BuildContext context) {
    
          return Dialog(
            backgroundColor: const Color.fromARGB(255, 4, 17, 65),
            
            child: Container(
              height: 300,
              child:  Padding(
                padding: EdgeInsets.all(12.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Multi(color: Colors.white, subtitle: 'Confirm Identity', weight: FontWeight.w500, size: 25),
                    Image.asset('assets/182486.png',color: Colors.white),
                    TextButton(
                                      onPressed: () {
                                       Navigator.of(context).pop();
                                      },
                                      child: Multi(
                                          color: const Color.fromARGB(255, 255, 255, 255),
                                          subtitle: 'Verify',
                                          weight: FontWeight.w500,
                                          size: 18)),
                  ],
                ),
              ),
            ),
          );
        
  }
}



class TechName extends StatefulWidget {
  int? index;
   TechName({super.key,required this.index});

  @override
  State<TechName> createState() => _TechNameState();
}

class _TechNameState extends State<TechName> {
  @override
   final _formKey = GlobalKey<FormState>();
  Widget build(BuildContext context) {
      final name = TextEditingController();
 
          return Dialog(
            backgroundColor: const Color.fromARGB(255, 4, 17, 65),
            
            child: Container(
              height: 250.h,
              child:  Padding(
                padding: EdgeInsets.all(12.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Form(
                      key:_formKey,
                      child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Multi(
                                    color: Colors.white,
                                    subtitle: 'Your Name',
                                    weight: FontWeight.w500,
                                    size: 8),
                                SizedBox(height: 5.h,),
                                TextFormField(
                                   controller: name,
                                  validator: (value) => value!.isEmpty
                                      ? 'User name cannot be blank'
                                      : null,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                  decoration: InputDecoration(
                                    enabledBorder: const OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.white),
                                    ),
                                    focusedBorder: const OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.white)),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    hintText: 'abc@gmail.com',
                                    hintStyle:
                                        const TextStyle(color: Colors.white),
                                  ),
                                ),
                                ElevatedButton(
                                  onPressed: ()async{
                                    if (_formKey.currentState!.validate()) {
                                          await FirebaseFirestore.instance
                        .collection('table_info')
                        .doc("SMfpoRM3hsZHqOuOq2aU").collection("16-oct-2023").doc('SMfpoRM3hsZHqOuOq2aU')
                        .get()
                        .then((DocumentSnapshot documentSnapshot) {
                          if (documentSnapshot.exists) {
                            
                            final Map<String, dynamic> data = documentSnapshot.data() as Map<String, dynamic>;
                            data['data'][widget.index]['tech'] = name.text;
                             FirebaseFirestore.instance
                        .collection('table_info')
                        .doc("SMfpoRM3hsZHqOuOq2aU").collection("16-oct-2023").doc('SMfpoRM3hsZHqOuOq2aU').set(data);
                          
                          }
                        });
                                    }
                                  
                                    Navigator.of(context).pop();
                                }, child: Text("Done"))
                              ]),
                    ),
                  ],
                ),
              ),
            ),
          );
        
  }
}