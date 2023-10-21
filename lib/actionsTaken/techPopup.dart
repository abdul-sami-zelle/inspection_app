import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sign_up_page_2/multi.dart';

class TechNamepop extends StatefulWidget {
  int? index;
   TechNamepop({super.key,required this.index});

  @override
  State<TechNamepop> createState() => _TechNamepopState();
}

class _TechNamepopState extends State<TechNamepop> {
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
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                            Multi(color: Colors.white, subtitle: "Technician Info", weight: FontWeight.w500, size: 14),
                    SizedBox(height: 5.h,),
                          Column(
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






                            //         ElevatedButton(
                            //           onPressed: ()async{
                            //             if (_formKey.currentState!.validate()) {
                            //                   await FirebaseFirestore.instance
                            // .collection('table_info')
                            // .doc("SMfpoRM3hsZHqOuOq2aU").collection("16-oct-2023").doc('SMfpoRM3hsZHqOuOq2aU')
                            // .get()
                            // .then((DocumentSnapshot documentSnapshot) {
                            //   if (documentSnapshot.exists) {
                                
                            //     final Map<String, dynamic> data = documentSnapshot.data() as Map<String, dynamic>;
                            //     data['data'][widget.index]['tech'] = name.text;
                            //      FirebaseFirestore.instance
                            // .collection('table_info')
                            // .doc("SMfpoRM3hsZHqOuOq2aU").collection("16-oct-2023").doc('SMfpoRM3hsZHqOuOq2aU').set(data);
                              
                            //   }
                            // });
                            //             }
                                      
                            //             Navigator.of(context).pop();
                            //         }, child: Text("Done"))
                                  ]),
                                   SizedBox(height: 5.h,),
                                  
   Container(
                          width: double.infinity,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white
                            ),
                            onPressed: (){}, 
                            child: Multi(color: const Color.fromARGB(255, 4, 17, 65), subtitle: "Save Changes", weight: FontWeight.bold, size: 10)
                            ),
                    )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        
  }
}