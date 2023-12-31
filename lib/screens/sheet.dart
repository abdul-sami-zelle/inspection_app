import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:omni_datetime_picker/omni_datetime_picker.dart';
import 'package:provider/provider.dart';
import 'package:sign_up_page_2/multi.dart';
import 'package:sign_up_page_2/screens/first_page.dart';
import 'package:sign_up_page_2/screens/update_sheet.dart';
import 'package:sign_up_page_2/statemaneger/Provider.dart';
import 'package:sign_up_page_2/widgets/table.dart';
import 'package:sign_up_page_2/widgets/tableData.dart';
import 'package:sign_up_page_2/widgets/tableDataDesign2.dart';

class Sheet extends StatefulWidget {
  Sheet({
    super.key,
  });

  @override
  State<Sheet> createState() => _SheetState();
}

class _SheetState extends State<Sheet> {
  @override
   String date = '';
    String time = '';
  Widget build(BuildContext context) {
   
    final Provider11 = Provider.of<Provider1>(context);
    return SafeArea(
        child: Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Stack(
              children: [
                Column(
                  children: [
                    Container(
                      height: 170.h,
                      width: double.infinity.w,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              height: 50.h,
                              width: 300.w,
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Container(
                                  height: 30.h,
                                  width: 85.w,
                                  child: TextButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: Multi(
                                      color:
                                          const Color.fromARGB(255, 19, 14, 85),
                                      subtitle: 'Back',
                                      weight: FontWeight.w500,
                                      size: 15,
                                    ),
                                  )),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Multi(
                                  color: const Color.fromARGB(255, 19, 14, 85),
                                  subtitle: '25 HRS INSPECTION CHECK ',
                                  weight: FontWeight.w600,
                                  size: 18,
                                ),
                                Multi(
                                  color: const Color.fromARGB(255, 19, 14, 85),
                                  subtitle: 'SHEET OF Mi 171 HEL (KAZAN)',
                                  weight: FontWeight.w600,
                                  size: 18,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 3),
                      child: Divider(
                        thickness: 0.5,
                        color: Color.fromARGB(255, 4, 17, 65),
                      ),
                    ),
                    Container(
                      width: double.infinity.w,
                      height: 120.h,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Multi(
                                      color:
                                          const Color.fromARGB(255, 4, 17, 65),
                                      subtitle: 'Inspection Date',
                                      weight: FontWeight.w500,
                                      size: 18),
                                  
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              // crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 40.h,
                                      width: 140.w,
                                      decoration: const BoxDecoration(
                                        color: Colors.black,
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(0.5),
                                        child: Container(
                                          height: 39.5.h,
                                          width: 139.5.w,
                                          decoration: const BoxDecoration(
                                            color: Colors.white,
                                          ),
                                          child: Align(
                                            alignment: Alignment.center,
                                            child: Multi(
                                                color: Color.fromARGB(
                                                    255, 0, 0, 0),
                                                subtitle: date,
                                                weight: FontWeight.w500,
                                                size: 15),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Multi(
                                        color: const Color.fromARGB(
                                            255, 175, 175, 175),
                                        subtitle: 'Date',
                                        weight: FontWeight.w500,
                                        size: 12)
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 40.h,
                                      width: 100.w,
                                      decoration: const BoxDecoration(
                                        color: Colors.black,
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(0.5),
                                        child: Container(
                                          height: 39.5.h,
                                          width: 99.5.w,
                                          decoration: const BoxDecoration(
                                            color: Colors.white,
                                          ),
                                          child: Align(
                                            alignment: Alignment.center,
                                            child: Multi(
                                                color: Color.fromARGB(255, 0, 0, 0),
                                                subtitle: time,
                                                weight: FontWeight.w500,
                                                size: 15),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 25),
                                      child: Multi(
                                          color: const Color.fromARGB(
                                              255, 175, 175, 175),
                                          subtitle: 'Time',
                                          weight: FontWeight.w500,
                                          size: 12),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 20),
                                  child: Container(
                                      height: 50.h,
                                      width: 30.w,
                                      child: IconButton(
                                        onPressed: () async {
                                          DateTime? dateTime =
                                              await showOmniDateTimePicker(
                                            context: context,
                                            initialDate: DateTime.now(),
                                            firstDate: DateTime(1600).subtract(
                                                const Duration(days: 3652)),
                                            lastDate: DateTime.now().add(
                                              const Duration(days: 3652),
                                            ),
                                            is24HourMode: false,
                                            isShowSeconds: false,
                                            minutesInterval: 1,
                                            secondsInterval: 1,
                                            isForce2Digits: true,
                                            borderRadius: const BorderRadius.all(
                                                Radius.circular(16)),
                                            constraints: const BoxConstraints(
                                              maxWidth: 350,
                                              maxHeight: 650,
                                            ),
                                            transitionBuilder:
                                                (context, anim1, anim2, child) {
                                              return FadeTransition(
                                                opacity: anim1.drive(
                                                  Tween(
                                                    begin: 0,
                                                    end: 1,
                                                  ),
                                                ),
                                                child: child,
                                              );
                                            },
                                            transitionDuration:
                                                const Duration(milliseconds: 200),
                                            barrierDismissible: true,
                                            selectableDayPredicate: (dateTime) {
                                              // Disable 25th Feb 2023
                                              if (dateTime ==
                                                  DateTime(2023, 2, 25)) {
                                                return false;
                                              } else {
                                                return true;
                                              }
                                            },
                                          );
                                          print(dateTime);
                                          setState(() {
                                            date = dateTime
                                                .toString()
                                                .substring(0, 10);
                                            time = dateTime
                                                .toString()
                                                .substring(11, 19);
                                          });
                                        },
                                        icon: Icon(Icons.calendar_month),
                                        iconSize: 40,
                                      ),),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Divider(
                      thickness: 0.5,
                      color: Color.fromARGB(255, 4, 17, 65),
                    ),
                    Multi(
                        color: const Color.fromARGB(255, 4, 17, 65),
                        subtitle: 'Engine',
                        weight: FontWeight.w600,
                        size: 20),
                    SizedBox(
                      height: 10.h,
                    ),
                    Container(
                      height: 250.h,
                      // width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: SingleChildScrollView(
                          child:
                            FutureBuilder(
            future: Provider11.fetchData(),
            initialData: "Code sample",
            builder: (BuildContext context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(
                    color: Colors.deepPurpleAccent,
                  ),
                );
              }
              if (snapshot.connectionState == ConnectionState.done) {
                if (snapshot.hasError) {
                  return Center(
                    child: Text(
                      'An ${snapshot.error} occurred',
                      style: const TextStyle(fontSize: 18, color: Colors.red),
                    ),
                  );
                } else if (snapshot.hasData) {
                  final data = snapshot.data;

                  return ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: Provider11.data1.length,
                    itemBuilder: (context,index){
                     
                      return 
                      TableDataContainer2(no: Provider11.data1[index].ser.toString(), dueAt: '300hrs/6Months', descr: Provider11.data1[index].descr.toString(),);
                    });
              







                          
                }
              }

              return const Center(
                child: CircularProgressIndicator(),
              );
            },
          ),
                          
                          
                          

                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const UpdateSheet()),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                side: const BorderSide(
                                  color: Color.fromARGB(255, 0, 46, 86),
                                )),
                            child: Multi(
                                color: const Color.fromARGB(255, 4, 17, 65),
                                subtitle: 'UPDATE',
                                weight: FontWeight.w400,
                                size: 15)),
                        ElevatedButton(
                            onPressed: ()async {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(
                              //       builder: (context) =>  FirstPage()),
                              // );
                                
     await FirebaseFirestore.instance
    .collection('table_info')
    .doc("SMfpoRM3hsZHqOuOq2aU").collection("16-oct-2023").doc('SMfpoRM3hsZHqOuOq2aU')
    .get()
    .then((DocumentSnapshot documentSnapshot) {
      if (documentSnapshot.exists) {
        print(documentSnapshot.data());
        final Map<String, dynamic> data = documentSnapshot.data() as Map<String, dynamic>;
      var data2  =data['data'];
      for (var i = 0; i < data2.length; i++) {
        if (data2[i].containsKey("sub")) {
          print("yes");
        } else {
          print("no");
        }
      }
      }

    
    });
   
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    const Color.fromARGB(255, 0, 46, 86),
                                side: const BorderSide(
                                  color: Color.fromARGB(255, 4, 17, 65),
                                )),
                            child: Multi(
                                color: const Color.fromARGB(255, 255, 255, 255),
                                subtitle: 'SUBMIT',
                                weight: FontWeight.w400,
                                size: 15))
                      ],
                    )
                  ],
                ),
                 Align(
                      alignment: Alignment.topCenter,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Container(
                                      height: 40.h,
                                      width: 80.w,
                                      child: Image.asset('assets/logo.png')),
                                ),
                                SizedBox(
                                  width: 20.h,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 12),
                                  child: Multi(
                                      color: const Color.fromARGB(255, 0, 49, 92),
                                      subtitle: 'Fill Out Inspection Sheet',
                                      weight: FontWeight.w500,
                                      size: 15),
                                )
                              ],
                            ),
                          ),
                          const Divider(
                            thickness: 0.7,
                            color: Color.fromARGB(255, 4, 17, 65),
                          ),
                        ],
                      ),
                    ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
