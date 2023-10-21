import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:sign_up_page_2/actionsTaken/actions.dart';
import 'package:sign_up_page_2/actionsTaken/statusChange.dart';
import 'package:sign_up_page_2/actionsTaken/techPopup.dart';
import 'package:sign_up_page_2/multi.dart';
import 'package:sign_up_page_2/statemaneger/Provider.dart';
import 'package:sign_up_page_2/widgets/popup.dart';

class DataFormat111 extends StatefulWidget {
  String? ser;
  String? auth;
  String? status;
  String? description;
  String? tech;
  String? qci;
  String? dueAt;
  String? actionTaken;
  DataFormat111({super.key,required this.ser,required this.auth,required this.actionTaken,required this.description,required this.dueAt,required this.qci,required this.status,required this.tech});

  @override
  State<DataFormat111> createState() => _DataFormat111State();
}

class _DataFormat111State extends State<DataFormat111> {
  @override
  String? dropdownValue;
  Widget build(BuildContext context) {
     final Provider11 = Provider.of<Provider1>(context);
    final size = MediaQuery.of(context).size;
    return Padding(
      padding:
          EdgeInsets.only(right: 10.w, left: 10.w, top: 10.h, bottom: 30.h),
      child: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              // Positioned(
              //     bottom: -60.h,
              //     right: 1.w,
              //     left: 1.w,
              //     child: ),
              Container(
                height: 200.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: const Color.fromARGB(255, 227, 227, 227),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      offset: const Offset(
                        -5,
                        0,
                      ),
                      blurRadius: 20.0,
                      spreadRadius: 1,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Expanded(
                        flex: 5,
                        child: Container(
                          width: double.infinity,
                      
                          child: Row(
                            children: [
                              Expanded(
                                flex: 1, 
                                child:Container(
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                        topLeft:Radius.circular(10.r)
                                      )
                                    ),
                                    child: Padding(
                                      padding:  EdgeInsets.only(left:10.w ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            height: 1.h,
                                          ),
                                          Multi(
                                              color: Colors.black,
                                              subtitle: "Ser",
                                              weight: FontWeight.w400,
                                              size: 10),
                                          SizedBox(
                                            height: 2.h,
                                          ),
                                          Multi(
                                              color: Colors.black,
                                              subtitle: "${widget.ser}",
                                              weight: FontWeight.bold,
                                              size: 12),
                                          SizedBox(
                                            height: 1.h,
                                          ),
                                        ],
                                      ),
                                    ),
                                  )),
                              Expanded(
                                  flex: 5,
                                  child: Container(
                                    height: double.infinity,
                                    color: Colors.white,
                                    child: Padding(
                                       padding:  EdgeInsets.only(left:5.w ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            height: 1.h,
                                          ),
                                          Multi(
                                              color: Colors.black,
                                              subtitle: "Auth",
                                              weight: FontWeight.w400,
                                              size: 10),
                                          SizedBox(
                                            height: 2.h,
                                          ),
                                          Multi(
                                              color: Colors.black,
                                              subtitle: "${widget.auth!.length>16?widget.auth!.toString().substring(0,15)+"...":widget.auth!}",
                                              weight: FontWeight.bold,
                                              size: 12),
                                          SizedBox(
                                            height: 1.h,
                                          ),
                                        ],
                                      ),
                                    ),
                                  )),
                              Expanded(
                                  flex: 3,
                                  child: Container(
                                      height: double.infinity,
                                      color: Colors.white,
                                      child: 
                                      Padding(
                                        padding:  EdgeInsets.all(4.0),
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Color.fromARGB(255, 19, 14, 85)
                                          ),
                                          onPressed: (){
                                                showDialog(
                                                  context: context,
                                                  builder: (BuildContext context) {
                                                    return StatusChange();
                                                  },
                                                );
                                          }, 
                                          child: Multi(color: Colors.white,
                                                  subtitle: "status",
                                                  weight: FontWeight.bold,
                                                  size: 13)),
                                      ))
                                      // TextFormField(
                                        
                                      //   decoration: InputDecoration(
                                         
                                      //     border: OutlineInputBorder(),
                                      //     suffixIcon:
                                      //         Padding(
                                      //           padding:EdgeInsets.only(right: 2.w,left: 5.w),
                                      //           child: DropdownButtonFormField(
                                                  
                                      //                                                         value: dropdownValue,
                                      //                                                         onChanged: (newValue) {
                                      //           setState(() {
                                      //             dropdownValue = newValue!;
                                      //           });
                                      //                                                         },
                                      //                                                         items: <String>[
                                      //           'x',
                                      //           '-',
                                               
                                      //                                                         ].map<DropdownMenuItem<String>>(
                                      //             (String value) {
                                      //           return DropdownMenuItem<
                                      //               String>(
                                      //             value: value,
                                      //             child: Multi(
                                      //                 color: Colors.black,
                                      //                 subtitle: value,
                                      //                 weight: FontWeight.bold,
                                      //                 size: 13),
                                      //           );
                                      //                                                         }).toList(),
                                      //                                                       ),
                                      //         ),
                                      //   ),
                                      // ))
                                      ),
                            ],
                          ),
                        )),
                    Expanded(
                        flex: 20,
                        child: Container(
                          
                          child: Row(
                            children: [
                              Expanded(
                                flex: 8,
                                child: Container(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        flex: 4,
                                        child: Container(child: Center(
                                          child: Multi(
                                                  color: Colors.black,
                                                  subtitle: "Description",
                                                  weight: FontWeight.w400,
                                                  size: 10),
                                        ),)),
                                      Expanded(
                                        flex: 20,
                                        child: Padding(
                                          padding:  EdgeInsets.all(4),
                                          child: Container(
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                                      border: Border.all(
                                                        color: Color.fromARGB(255, 19, 14, 85),
                                                        width: 1
                                                      ),
                                                      borderRadius: BorderRadius.circular(5)
                                                    ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(4),
                                              child: Scrollbar(
                                                
                                                thickness: 10,
                                                radius: Radius.circular(20),
                                                scrollbarOrientation: ScrollbarOrientation.right,
                                                thumbVisibility: true,
                                                child: SingleChildScrollView(
                                        
                                                
                                                  child: Padding(
                                                    padding:EdgeInsets.all(4),
                                                    child: GestureDetector(
                                                      onTap: (){
                                                        print("working000000000----------------------------------------->");
                                                      },
                                                      child: Container(
                                                        
                                                        child: Padding(
                                                          padding:  EdgeInsets.only(right: 10.w),
                                                          child: Multi(
                                                                color: Colors.black,
                                                                subtitle: "${widget.description}",
                                                                weight: FontWeight.w400,
                                                                size: 10),
                                                        ),),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        )),
                                    ],
                                  ),
                                )),
                              Expanded(
                                flex: 4,
                                child: Container(
                                
                                   child: Padding(
                                     padding:  EdgeInsets.symmetric(horizontal: 5.w,vertical: 2.h),
                                     child: Column(
                                      children: [
                                        Expanded(
                                          flex: 4,
                                          child: Container(
                                              color: Color.fromARGB(255, 19, 14, 85),
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Expanded(
                                                    flex: 5,
                                                    child:  Center(
                                                      child: Multi(
                                                                                                color: Colors.white,
                                                                                                subtitle: "Tech",
                                                                                                weight: FontWeight.w400,
                                                                                                size: 10),
                                                    ),),
                                                  Expanded(
                                                    flex: 10,
                                                    child: GestureDetector(
                                                      onTap: (){
                                                          showDialog(
                                                  context: context,
                                                  builder: (BuildContext context) {
                                                    return TechNamepop(index: null,);
                                                  },
                                                );
                                                      },
                                                      child: Container(
                                                        color: Colors.white,
                                                      ),
                                                    )),
                                                ],
                                              ),
                                          )),
                                          Expanded(
                                          flex: 4,
                                          child: Container(
                                              color: Color.fromARGB(255, 19, 14, 85),
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Expanded(
                                                    flex: 5,
                                                    child:  Center(
                                                      child: Multi(
                                                                                                color: Colors.white,
                                                                                                subtitle: "QCI",
                                                                                                weight: FontWeight.w400,
                                                                                                size: 10),
                                                    ),),
                                                  Expanded(
                                                    flex: 10,
                                                    child: Container(
                                                      color: Colors.white,
                                                    )),
                                                ],
                                              ),
                                          )),
                                      ],
                                     ),
                                   ),
                                )),
                            ],
                          ),
                        ))
                  ],
                ),
              ),
            
            ],
          ),
       Container(
                    height: 60.h,
                    width: size.width,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 19, 14, 85),
                      borderRadius: BorderRadius.circular(10.r),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.5),
                          offset: const Offset(
                            0,
                            5,
                          ),
                          blurRadius: 20.0,
                          spreadRadius: 1,
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5.w),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(),
                          Row(
                            children: [
                              Expanded(
                                  flex: 4,
                                  child: Padding(
                                    padding:EdgeInsets.only(right: 5.w),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                          Multi(
                                                      color: Colors.white,
                                                      subtitle: "Action Taken",
                                                      weight: FontWeight.w400,
                                                      size: 10),
                                                  SizedBox(
                                                    height: 3.h,
                                                  ),
                                        GestureDetector(
                                          onTap: (){
                                           showDialog(
                                                  context: context,
                                                  builder: (BuildContext context) {
                                                    return ActionsChange();
                                                  },
                                                );
                                            
                                          },
                                          child: Container(
                                            width: double.infinity,
                                            height:35.h,
                                            color: Colors.white,
                                            child: Multi(color: Colors.black, subtitle: widget.actionTaken!, weight: FontWeight.bold, size: 10),
                                         
                                          ),
                                        ),
                                      ], 
                                    ),
                                  )
                               
                                  //  ElevatedButton(
                                  //     style: ElevatedButton.styleFrom(
                                  //         backgroundColor: Colors.white),
                                  //     onPressed: () {},
                                  //     child: Multi(
                                  //         color: Color.fromARGB(255, 19, 14, 85),
                                  //         subtitle: "Status",
                                  //         weight: FontWeight.bold,
                                  //         size: 10)
                                  //         )
                                          ),
                              // Expanded(flex: 2, child: Container()),
                              Expanded(
                                  flex: 2,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                        Multi(
                                                    color: Colors.white,
                                                    subtitle: "Due At",
                                                    weight: FontWeight.w400,
                                                    size: 10),
                                                SizedBox(
                                                  height: 3.h,
                                                ),
                                      Container(
                                        height: 35.h,
                                        width: double.infinity,
                                        child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                                backgroundColor: Colors.white),
                                          
                                              onPressed: ()async{
                                              await  Provider11.fetchData();
                                                print("working000000000----------------------------------------->");},
                                            
                                            child: Multi(
                                                color: Color.fromARGB(255, 19, 14, 85),
                                                subtitle: "${widget.dueAt}",
                                                weight: FontWeight.bold,
                                                size: 7)),
                                      ),
                                    ],
                                  )),
                            ],
                          ),
                          SizedBox(height: 7.h,),
                        ],
                      ),
                    ),
                  )
        ],
      ),
    );
  }
}
