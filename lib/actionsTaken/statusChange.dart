import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sign_up_page_2/multi.dart';

class StatusChange extends StatefulWidget {
  const StatusChange({super.key});

  @override
  State<StatusChange> createState() => _StatusChangeState();
}

class _StatusChangeState extends State<StatusChange> {
  @override
  bool _isCross = false;
  bool _isSkip = false;
  Widget build(BuildContext context) {
    
          return Dialog(
            backgroundColor: const Color.fromARGB(255, 4, 17, 65),
            
            child: Container(
              height: 200.h,
              child:  Padding(
                padding: EdgeInsets.all(12.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Multi(color: Colors.white, subtitle: "Change Status", weight: FontWeight.w500, size: 14),
                    SizedBox(height: 5.h,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Multi(color: Colors.white, subtitle: "Skip it", weight: FontWeight.bold, size: 12),
                        Checkbox(
                                      checkColor: Colors.white,
                                      focusColor: Colors.red,
                                    fillColor: MaterialStateProperty.all(Color(0xffb929be)),
                                      activeColor: Colors.pink,
                                      value: _isSkip,
                                      onChanged: ( newValue) {
                                        setState(() {
                                         _isSkip=newValue!;
                                       });
                                      },
                                    ),
                      ],
                    ),
                     SizedBox(height: 2.h,),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Multi(color: Colors.white, subtitle: "Cross it", weight: FontWeight.bold, size: 12),
                        Checkbox(
                                      checkColor: Colors.white,
                                      focusColor: Colors.red,
                                    fillColor: MaterialStateProperty.all(Color(0xffb929be)),
                                      activeColor: Colors.pink,
                                      value: _isCross,
                                      onChanged: ( newValue) {
                                       setState(() {
                                         _isCross=newValue!;
                                       });
                                      },
                                    ),
                      ],
                    ),
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
            ),
          );
        
  }
}