import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sign_up_page_2/multi.dart';

class TableDataContainer extends StatelessWidget {
  String? no;
  String? dueAt;
   TableDataContainer({super.key,required this.no,required this.dueAt});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:EdgeInsets.only(bottom: 10.h),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Color.fromARGB(255, 19, 14, 85)
        ),
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 5.w,vertical: 5.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 5.w),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white
                            ),
                            child: Center(
                              child: Multi(color: Colors.black, subtitle: '${no}', weight: FontWeight.bold, size: 13),
                            ),
                          ),
                        ],
                      ),
                    )),
                   
                   Expanded(
                    
                    flex: 3,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5.w),
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Multi(color: Colors.white, subtitle: "Due At", weight: FontWeight.bold, size: 10),
                            SizedBox(height: 3.h,),
                            Container(
                              height: 30,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Colors.white
                              ),
                              child: Center(
                              child: Multi(color: Colors.black, subtitle: '${dueAt}', weight: FontWeight.bold, size: 10),
                            ),
                            ),
                          ],
                        ),
                      ),
                    ))
                ],
              ),
              SizedBox(height: 5.h,),
              Multi(color: Colors.white, subtitle: "Authentication", weight: FontWeight.bold, size: 10),
              SizedBox(height: 5.h,),
              Multi(color: Colors.white, subtitle: "Description DescriptionDescriptionDescriptionDescriptionvDescriptionDescriptionDescriptionDescriptionDescriptionvvvvvDescription", weight: FontWeight.normal, size: 10),
              SizedBox(height: 5.h,),
              Row(
                children: [
                    Expanded(
                        flex: 3,
                        child: Padding(
                          padding:  EdgeInsets.symmetric(horizontal: 5.w),
                          child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Multi(color: Colors.white, subtitle: "Status", weight: FontWeight.bold, size: 10),
                              SizedBox(height: 3.h,),
                              Container(
                                height: 30,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: Colors.white
                                ),
                              ),
                            ],
                          ),
                                          ),
                        )),
                        Expanded(
                        flex: 3,
                        child: Padding(
                          padding:  EdgeInsets.symmetric(horizontal: 5.w),
                          child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Multi(color: Colors.white, subtitle: "Action", weight: FontWeight.bold, size: 10),
                              SizedBox(height: 3.h,),
                              Container(
                                height: 30,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: Colors.white
                                ),
                              ),
                            ],
                          ),
                                          ),
                        )),
                ],
              ),
              SizedBox(height: 5.h,),
               Row(
                children: [
                    Expanded(
                        flex: 3,
                        child: Padding(
                          padding:  EdgeInsets.symmetric(horizontal: 5.w),
                          child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Multi(color: Colors.white, subtitle: "Technician", weight: FontWeight.bold, size: 10),
                              SizedBox(height: 3.h,),
                              Container(
                                height: 30,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: Colors.white
                                ),
                              ),
                            ],
                          ),
                                          ),
                        )),
                        Expanded(
                        flex: 3,
                        child: Padding(
                          padding:  EdgeInsets.symmetric(horizontal: 5.w),
                          child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Multi(color: Colors.white, subtitle: "QCI", weight: FontWeight.bold, size: 10),
                              SizedBox(height: 3.h,),
                              Container(
                                height: 30,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: Colors.white
                                ),
                              ),
                            ],
                          ),
                                          ),
                        )),
                ],
              ),
              SizedBox(height: 2.h,),
              Divider(color: Colors.white,thickness: 1,),
              SizedBox(height: 2.h,),
              Multi(color: Colors.white, subtitle: "Authentication", weight: FontWeight.bold, size: 10),
              SizedBox(height: 5.h,),
              Multi(color: Colors.white, subtitle: "Description DescriptionDescriptionDescriptionDescriptionvDescriptionDescriptionDescriptionDescriptionDescriptionvvvvvDescription", weight: FontWeight.normal, size: 10),
              SizedBox(height: 5.h,),
              Row(
                children: [
                    Expanded(
                        flex: 3,
                        child: Padding(
                          padding:  EdgeInsets.symmetric(horizontal: 5.w),
                          child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Multi(color: Colors.white, subtitle: "Status", weight: FontWeight.bold, size: 10),
                              SizedBox(height: 3.h,),
                              Container(
                                height: 30,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: Colors.white
                                ),
                              ),
                            ],
                          ),
                                          ),
                        )),
                        Expanded(
                        flex: 3,
                        child: Padding(
                          padding:  EdgeInsets.symmetric(horizontal: 5.w),
                          child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Multi(color: Colors.white, subtitle: "Action", weight: FontWeight.bold, size: 10),
                              SizedBox(height: 3.h,),
                              Container(
                                height: 30,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: Colors.white
                                ),
                              ),
                            ],
                          ),
                                          ),
                        )),
                ],
              ),
              SizedBox(height: 5.h,),
               Row(
                children: [
                    Expanded(
                        flex: 3,
                        child: Padding(
                          padding:  EdgeInsets.symmetric(horizontal: 5.w),
                          child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Multi(color: Colors.white, subtitle: "Technician", weight: FontWeight.bold, size: 10),
                              SizedBox(height: 3.h,),
                              Container(
                                height: 30,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: Colors.white
                                ),
                              ),
                            ],
                          ),
                                          ),
                        )),
                        Expanded(
                        flex: 3,
                        child: Padding(
                          padding:  EdgeInsets.symmetric(horizontal: 5.w),
                          child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Multi(color: Colors.white, subtitle: "QCI", weight: FontWeight.bold, size: 10),
                              SizedBox(height: 3.h,),
                              Container(
                                height: 30,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: Colors.white
                                ),
                              ),
                            ],
                          ),
                                          ),
                        )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}