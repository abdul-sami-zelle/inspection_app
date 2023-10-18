import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:sign_up_page_2/multi.dart';
import 'package:sign_up_page_2/screens/first_page.dart';
import 'package:sign_up_page_2/screens/login_screen.dart';
import 'package:sign_up_page_2/statemaneger/Provider.dart';
import 'package:sign_up_page_2/widgets/popup.dart';
import 'package:sign_up_page_2/widgets/shadow_text.dart';

class SignUpPage extends StatelessWidget {
  String dropdownvalue = 'QCI';

  // List of items in our dropdown menu
  var items = [
    'QCI',
    'Technician',
  ];
  final email = TextEditingController();
  final password = TextEditingController();
  final userName = TextEditingController();
  final trade = TextEditingController();
  final army = TextEditingController();

  SignUpPage({super.key});

  @override
  //final _formKey = new GlobalKey<FormState>();
  Widget build(BuildContext context) {
    final Provider11 = Provider.of<Provider1>(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 4, 17, 65),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.transparent,
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Form(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 80.h,
                          width: 300.w,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                    height: 40.h,
                                    width: 150.w,
                                    child: Image.asset('assets/logo.png')),
                                ShadowText(
                                    text: 'Registration',
                                    size: 25,
                                    color: Colors.red,
                                    weight: FontWeight.w500,
                                    shadowColor: Colors.white)
                              ]),
                        ),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Multi(
                                  color: Colors.white,
                                  subtitle: 'User Name',
                                  weight: FontWeight.w500,
                                  size: 15),
                              TextFormField(
                                // controller: userName,
                                // validator: (value) => value!.isEmpty
                                //     ? 'User name cannot be blank'
                                //     : null,
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
                                  hintText: 'Amir Hassan',
                                  hintStyle: const TextStyle(
                                      color: Colors.white, fontSize: 15),
                                ),
                              ),
                            ]),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Multi(
                                  color: Colors.white,
                                  subtitle: 'Your Email',
                                  weight: FontWeight.w500,
                                  size: 15),
                              TextFormField(
                                //  controller: email,
                                // validator: (value) => value!.isEmpty
                                //     ? 'User name cannot be blank'
                                //     : null,
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
                            ]),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Multi(
                                  color: Colors.white,
                                  subtitle: 'Set Password',
                                  weight: FontWeight.w500,
                                  size: 15),
                              TextFormField(
                                // controller: password,
                                // validator: (value) => value!.isEmpty
                                //     ? 'Email cannot be blank'
                                //     : null,
                                obscureText: true,
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
                                  hintText: '**********',
                                  hintStyle:
                                      const TextStyle(color: Colors.white),
                                ),
                              ),
                            ]),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'User Role:',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500),
                              ),
                              Container(
                                height: 50.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.white,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(1),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color:
                                          const Color.fromARGB(255, 4, 17, 65),
                                    ),
                                    child: DropdownButtonHideUnderline(
                                      child: Padding(
                                        padding: const EdgeInsets.all(15),
                                        child: DropdownButton(
                                          dropdownColor: const Color.fromARGB(
                                              255, 4, 17, 65),
                                          isExpanded: true,

                                          // Initial Value
                                          value: dropdownvalue,

                                          // Down Arrow Icon
                                          icon: const Icon(
                                              Icons.keyboard_arrow_down),

                                          // Array list of items
                                          items: items.map((String items) {
                                            return DropdownMenuItem(
                                              value: items,
                                              child: Text(
                                                items,
                                                style: const TextStyle(
                                                    color: Colors.white),
                                              ),
                                            );
                                          }).toList(),
                                          // After selecting the desired option,it will
                                          // change button value to selected value
                                          onChanged: (String? newValue) {
                                            Provider11.changeValue(newValue);
                                          },
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ]),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Multi(
                                  color: Colors.white,
                                  subtitle: 'Trade:',
                                  weight: FontWeight.w500,
                                  size: 15),
                              TextFormField(
                                // controller: trade,
                                // validator: (value) => value!.isEmpty
                                //     ? 'Email cannot be blank'
                                //     : null,
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
                                ),
                              ),
                            ]),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Multi(
                                  color: Colors.white,
                                  subtitle: 'Army Number:',
                                  weight: FontWeight.w500,
                                  size: 15),
                              TextFormField(
                                // controller: army,
                                // validator: (value) => value!.isEmpty
                                //     ? 'Email cannot be blank'
                                //     : null,
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
                                ),
                              ),
                            ]),
                        Container(
                          height: 230.h,
                          width: 350.w,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return Popup();
                                    },
                                  );
                                },
                                child: Container(
                                  height: 180.h,
                                  width: double.infinity.w,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                  ),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Multi(
                                          color: Colors.black,
                                          subtitle: 'FingerPrint Verification',
                                          weight: FontWeight.w500,
                                          size: 15),
                                      Image.asset('assets/182486.png')
                                    ],
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Container(
                                  height: 35.h,
                                  width: 120.w,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      
                                      // if (_formKey.currentState!.validate()) {
                                      //   Provider11.emailSignin(
                                      //       context,
                                      //       email.text,
                                      //       password.text,
                                      //       dropdownvalue,
                                      //       userName.text,
                                      //       trade.text,
                                      //       army.text);
                                      // }
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const LoginPage()),
                                      );
                                    },
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: const Color.fromARGB(
                                            255, 151, 174, 217),
                                        side: BorderSide(
                                            width: 800.w, color: Colors.black),
                                        shape: RoundedRectangleBorder(
                                            //to set border radius to button
                                            borderRadius:
                                                BorderRadius.circular(5))),
                                    child: const Text(
                                      'Register',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color:
                                            Color.fromARGB(255, 255, 255, 255),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
