import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:sign_up_page_2/screens/first_page.dart';
import 'package:sign_up_page_2/screens/login_screen.dart';

class Provider1 extends ChangeNotifier {
  bool _isDone = false;
  bool get isDone => _isDone;
  var dropdownvalue;

  SplashState() {
    // Simulate a 3-second delay before marking the splash screen as done
    Timer(Duration(seconds: 3), () {
      _isDone = true;
      notifyListeners();
    });
  }

  changeValue(newValue) {
    dropdownvalue = newValue!;
  }

  int? indexx;

  // 0 == am
  // 1 == pm

  changeTime(int index) {
    indexx = index;
    notifyListeners();
  }

  bool? isAm;
  bool? isPm;
  time(isam, ispm) {
    bool? isAm;
    bool? isPm;
    isAm = isam;
    isPm = ispm;
    notifyListeners();
  }

  final FirebaseAuth _auth = FirebaseAuth.instance;

  String? uid;
  String? userEmail;
  String? password;
    bool loginState = false;

  changeStateTrue() {
    loginState = true;
    notifyListeners();
  }

  changeStateFalse() {
    loginState = false;
    notifyListeners();
  }


Future emailSignin(
      BuildContext context, String email, String password, String role,String userName,String trade,String army,) async {
    try {
      final FirebaseAuth auth = FirebaseAuth.instance;
      final FirebaseFirestore db = FirebaseFirestore.instance;
      await auth.createUserWithEmailAndPassword(
          email: email, password: password);
      final User? user1 = auth.currentUser;
      uid = user1!.uid;
      print("${uid}=====>uid");
      await db.collection("$role").doc(uid).set({
        "name": userName,
        "profile": "https://cdn-icons-png.flaticon.com/512/1077/1077012.png",
        "email": email,
        "uid": user1.uid,
         "role":role,
         "army":army,
         "trade":trade,    
      });
      Navigator.push(
          context,
          PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) =>
                LoginPage() ));
      print("done");
    } catch (e) {
      // Fluttertoast.showToast(
      //     msg: e.toString(),
      //     toastLength: Toast.LENGTH_SHORT,
      //     gravity: ToastGravity.BOTTOM,
      //     timeInSecForIosWeb: 1,
      //     backgroundColor: Colors.black,
      //     textColor: Colors.white,
      //     fontSize: 16.0);
    }
    notifyListeners();
  }



  Future<User?> signInWithEmailPassword(String email, String password,String role,context)async {
    await Firebase.initializeApp();
    User? user;
        try {
      await changeStateTrue();
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      user = userCredential.user;

      if (user != null) {
       await FirebaseFirestore.instance
            .collection('$role')
            .doc(user.uid)
            .get()
            .then((DocumentSnapshot documentSnapshot) {
          if (documentSnapshot.exists) {
            Map<String, dynamic> data =
                documentSnapshot.data() as Map<String, dynamic>;
            uid = user!.uid;
           


            Navigator.push(context,
                MaterialPageRoute(builder: (context) => FirstPage()));
           
          } else {
            print('Document does not exist on the database');
          }
        });
        uid = user.uid;
        userEmail = user.email;
        print(uid);
        await changeStateFalse();
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided.');
      }
      await changeStateFalse();
    }

    return user;
  }





  /// fetching tables data from databse:
  

  
   List<DataFormat1> data1 = [
   ];
  var data2 ;
   blankList(){
      data1 = [];
      data2 = null;
   }

  Future fetchData() async{
     await blankList();
       await FirebaseFirestore.instance
    .collection('table_info')
    .doc("SMfpoRM3hsZHqOuOq2aU").collection("16-oct-2023").doc('SMfpoRM3hsZHqOuOq2aU')
    .get()
    .then((DocumentSnapshot documentSnapshot) {
      if (documentSnapshot.exists) {
        
        final Map<String, dynamic> data = documentSnapshot.data() as Map<String, dynamic>;
       data2  =data['data'];
       for (var i = 0; i < data2.length; i++) {
        data1.add(DataFormat1(ser: data2[i]['ser'], auth: data2[i]['auth'], descr: data2[i]['decr'], status: data2[i]['status'], action: data2[i]['action'], tech: data2[i]['tech'], qci: data2[i]['qci']));
       };
      }
    });
    
    return data2;
    }
    
}



class DataFormat1 {
  var ser;
  var auth;
  var descr;
  var status;
  var action;
  var tech;
  var qci;
  DataFormat1({required this.ser,required this.auth,required this.descr,required this.status,required this.action,required this.tech,required this.qci});
}