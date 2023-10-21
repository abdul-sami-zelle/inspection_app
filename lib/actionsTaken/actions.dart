import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sign_up_page_2/multi.dart';

class ActionsChange extends StatefulWidget {
  const ActionsChange({super.key});

  @override
  State<ActionsChange> createState() => _ActionsChangeState();
}

class _ActionsChangeState extends State<ActionsChange> {
  @override
  bool _isFirst = false;
  bool _isSecond = false;
  bool _isThird = false;
  Widget build(BuildContext context) {
    
          return Dialog(
            backgroundColor: const Color.fromARGB(255, 4, 17, 65),
            
            child: Container(
              height: 260.h,
              child:  Padding(
                padding: EdgeInsets.all(12.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Multi(color: Colors.white, subtitle: "Action Taken", weight: FontWeight.w500, size: 14),
                    SizedBox(height: 5.h,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          flex: 10,
                          child: Multi(color: Colors.white, subtitle: "Action completed and found sat.", weight: FontWeight.bold, size: 10)),
                        Expanded(
                          flex: 2,
                          child: Checkbox(
                                        checkColor: Colors.white,
                                        focusColor: Colors.red,
                                      fillColor: MaterialStateProperty.all(Color(0xffb929be)),
                                        activeColor: Colors.pink,
                                        value: _isFirst,
                                        onChanged: ( newValue) {
                                          setState(() {
                                           _isFirst=newValue!;
                                         });
                                        },
                                      ),
                        ),
                      ],
                    ),
                     SizedBox(height: 2.h,),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                       Expanded(
                          flex: 10,child: Multi(color: Colors.white, subtitle: "See on form E-53", weight: FontWeight.bold, size: 10)),
                        Expanded(
                          flex: 2,
                          child: Checkbox(
                                        checkColor: Colors.white,
                                        focusColor: Colors.red,
                                      fillColor: MaterialStateProperty.all(Color(0xffb929be)),
                                        activeColor: Colors.pink,
                                        value: _isSecond,
                                        onChanged: ( newValue) {
                                         setState(() {
                                           _isSecond=newValue!;
                                         });
                                        },
                                      ),
                        ),
                      ],
                    ),
                     SizedBox(height: 2.h,),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          flex: 10,child: Multi(color: Colors.white, subtitle: "keyboard option to write any thing which he want", weight: FontWeight.bold, size: 10)),
                        Expanded(
                          flex: 2,
                          child: Checkbox(
                                        checkColor: Colors.white,
                                        focusColor: Colors.red,
                                      fillColor: MaterialStateProperty.all(Color(0xffb929be)),
                                        activeColor: Colors.pink,
                                        value: _isThird,
                                        onChanged: ( newValue) {
                                         setState(() {
                                           _isThird=newValue!;
                                         });
                                        },
                                      ),
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