import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:sign_up_page_2/multi.dart';
import 'package:sign_up_page_2/statemaneger/Provider.dart';

class TableDataContainer2 extends StatelessWidget {
  String? no;
  String? dueAt;
  String? descr;
  TableDataContainer2({super.key, required this.no, required this.dueAt,required this.descr});

  @override
  Widget build(BuildContext context) {
    final Provider11 = Provider.of<Provider1>(context);
    return Padding(
      padding: EdgeInsets.only(bottom: 10.h),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(width: 1, color: Colors.black)
              )
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                       decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(width: 1, color: Colors.black)
              )
            ),
                      child: Row(
                        children: [
                          Padding(
                            padding:EdgeInsets.only(bottom: 3.h),
                            child: Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle, color: Colors.grey),
                              child: Center(
                                child: Multi(
                                    color: Colors.black,
                                    subtitle: '${no}',
                                    weight: FontWeight.bold,
                                    size: 13),
                              ),
                            ),
                          ),
                          SizedBox(width: 5.w,),
                        
                          Container(
                             width: 100.w,
                            child: Multi(
                                color: Colors.black,
                                subtitle: "Auth",
                                weight: FontWeight.bold,
                                size: 10),
                          ),
                          SizedBox(width: 5.w,),
                          Container(
                             width: 200.w,
                            child: Multi(
                                color: Colors.black,
                                subtitle: "Description",
                                weight: FontWeight.bold,
                                size: 10),
                          ),
                          SizedBox(width: 5.w,),
                          Container(
                            width: 100.w,
                            child: Multi(
                                color: Colors.grey,
                                subtitle: "Status",
                                weight: FontWeight.bold,
                                size: 10),
                          ),
                          SizedBox(width: 5.w,),
                          Container(
                            width: 100.w,
                            child: Multi(
                                color: Colors.grey,
                                subtitle: "Action",
                                weight: FontWeight.bold,
                                size: 10),
                          ),
                          SizedBox(width: 5.w,),
                          Container(
                              width: 100.w,
                            child: Multi(
                                color: Colors.grey,
                                subtitle: "Technician",
                                weight: FontWeight.bold,
                                size: 10),
                          ),
                          SizedBox(width: 5.w,),
                          Container(
                            width: 100.w,
                            child: Multi(
                                color: Colors.grey,
                                subtitle: "QCI",
                                weight: FontWeight.bold,
                                size: 10),
                          ),
                        ],
                      ),
                    ),
                   
                    Row(
                      children: [
                          Container(
                              height: 30,
                              width: 30,
                            
                            ),
                            SizedBox(width: 5.w,),
                       
                        
                        Container(
                          width: 100.w,
                          child: Multi(
                              color: Colors.black,
                              subtitle: "Authentication",
                              weight: FontWeight.bold,
                              size: 10),
                        ),
                        SizedBox(width: 5.w,),
                        Container(
                          // height: 80.h,
                          width: 200.w,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 3.h,
                              ),
                              Multi(
                                  color: Colors.black,
                                  subtitle:
                                      "${descr.toString()}",
                                  weight: FontWeight.bold,
                                  size: 10),
                            ],
                          ),
                        ),
                        SizedBox(width: 5.w,),
                        Container(
                            height: 30,
                            width: 100.w,
                            decoration: BoxDecoration(color: Colors.grey),
                        
                        ),
                        SizedBox(width: 5.w,),
                         Container(
                            height: 30,
                            width: 100.w,
                            decoration: BoxDecoration(color: Colors.grey),
                          
                        ),
                        SizedBox(width: 5.w,),
                        Container(
                            height: 30,
                            width: 100.w,
                            decoration: BoxDecoration(color: Colors.grey),
                         
                        ),
                        SizedBox(width: 5.w,),
                         Container(
                            height: 30,
                            width: 100.w,
                            decoration: BoxDecoration(color: Colors.grey),
                          ),
                        
                      ],
                    ),
                      Row(
                      children: [
                          Container(
                              height: 30,
                              width: 30,
                            
                            ),
                            SizedBox(width: 5.w,),
                     
                        Container(
                          
                          width: 100.w,
                          child: Multi(
                              color: Colors.black,
                              subtitle: "Authentication",
                              weight: FontWeight.bold,
                              size: 10),
                        ),
                        SizedBox(width: 5.w,),
                        Container(
                          // height: 80.h,
                          width: 200.w,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 3.h,
                              ),
                              Multi(
                                  color: Colors.black,
                                  subtitle:
                                      "adatatdatdatdtadtadtdatdatdatdtutttttttttttttttttttttttttttttttttxrrrrrrrrrrrrrrrrrrrrrrrrrstrxxxxxxxxxxxxxxxxxxxxxxxxxxxxxtwwwwwwwwwwwwwwwwwwttttttttttttttttttsadtadtadtdatdatdtadtadtadtadtdatdatdatdtadtadtadtadtdatdatdatdtadtadtadtadtdatdatdatdatdtadtadtad",
                                  weight: FontWeight.bold,
                                  size: 10),
                            ],
                          ),
                        ),
                        SizedBox(width: 5.w,),
                        Container(
                            height: 30,
                            width: 100.w,
                            decoration: BoxDecoration(color: Colors.grey),
                        
                        ),
                        SizedBox(width: 5.w,),
                         Container(
                            height: 30,
                            width: 100.w,
                            decoration: BoxDecoration(color: Colors.grey),
                          
                        ),
                        SizedBox(width: 5.w,),
                        Container(
                            height: 30,
                            width: 100.w,
                            decoration: BoxDecoration(color: Colors.grey),
                         
                        ),
                        SizedBox(width: 5.w,),
                         Container(
                            height: 30,
                            width: 100.w,
                            decoration: BoxDecoration(color: Colors.grey),
                          ),
                        
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}




class DataOfTable extends StatelessWidget {
  const DataOfTable({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
                      height: 250.h,
                      // width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              TableDataContainer2(no: '1', dueAt: '300hrs/6Months', descr: '',),
                              TableDataContainer2(no: '2', dueAt: '200hrs/6Months', descr: '',),
                              TableDataContainer2(no: '3', dueAt: '00hrs/6Months', descr: '',),
                              TableDataContainer2(no: '4', dueAt: '3500hrs/6Months', descr: '',)
                            ],
                          ),
                        ),
                      ),
                    );
  }
}