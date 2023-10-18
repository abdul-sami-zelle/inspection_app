import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sign_up_page_2/screens/first_page.dart';
import 'package:sign_up_page_2/widgets/shadow_text.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 4, 17, 65),
        body: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        height: 150.h,
                      ),
                      Container(
                        height: 120.h,
                        width: 250.w,
                        child: Column(
                          children: [
                            Container(
                                height: 120.h,
                                width: 150.w,
                                child: 
                                Image.asset('assets/logo.png')
                                ),
                               //ShadowText(text:  'Inspection App', size: 25, color: Color.fromARGB(255, 255, 255, 255), weight: FontWeight.w500, shadowColor: Color.fromARGB(255, 155, 13, 23)),
                            
                          ],
                        ),
                      ),
                      // SizedBox(
                      //   height: 50.h,
                      // ),
                      Container(
                        height: 70.h,
                        width: 350.w,
                        child:  Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            // Text(
                            //   'Welcome to Inspection App',
                            //   style: TextStyle(
                            //       color: Color.fromARGB(255, 255, 255, 255),
                            //       fontSize: 20,
                            //       fontWeight: FontWeight.w500),
                            // ),
                            ShadowText(text:  'Log In To Your Account', size: 25, color: Color.fromARGB(255, 255, 255, 255), weight: FontWeight.w500, shadowColor: Color.fromARGB(255, 155, 13, 23)),
                            // Text(
                            //   'Log In To Your Account',
                            //   style: TextStyle(
                            //       color: Color.fromARGB(255, 255, 255, 255),
                            //       fontSize: 20,
                            //       fontWeight: FontWeight.w500),
                            // ),
                          ],
                        ),
                      ),
                       SizedBox(
                        height: 50.h,
                      ),
                      Container(
                        height: 200.h,
                        width: 300.w,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextField(
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor:
                                      const Color.fromARGB(255, 207, 220, 244),
                                  enabledBorder: const OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                  focusedBorder: const OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.white)),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  hintText: 'USERNAME',
                                  hintStyle: const TextStyle(
                                      color: Color.fromARGB(255, 117, 111, 111),
                                      fontWeight: FontWeight.w500,fontSize: 15),
                                ),
                              ),
                              TextField(
                                obscureText: true,
                                decoration: InputDecoration(
                                  
                                  filled: true,
                                  fillColor:
                                      const Color.fromARGB(255, 207, 220, 244),
                                  enabledBorder: const OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                  focusedBorder: const OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.white)),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  
                                  hintText: 'PASSWORD',
                                  hintStyle: const TextStyle(
                                      color: Color.fromARGB(255, 117, 111, 111),
                                      fontWeight: FontWeight.w500,fontSize: 15),
                                ),
                              ),
                              Container(
                                height: 50.h,
                                width: 150.w,
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>  FirstPage()),
                                    );
                                  },
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                          const Color.fromARGB(255, 207, 220, 244),
                                      side: BorderSide(
                                          width: 800.w, color: Colors.black),
                                      shape: RoundedRectangleBorder(
                                          //to set border radius to button
                                          borderRadius: BorderRadius.circular(10))),
                                  child: const Text(
                                    'LOG IN',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 4, 17, 65),
                                    ),
                                  ),
                                ),
                              ),
                            ]),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
