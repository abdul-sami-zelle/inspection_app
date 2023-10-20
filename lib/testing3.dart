import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sign_up_page_2/multi.dart';



class MultiLines extends StatefulWidget {
  @override
  _MultiLinesState createState() => _MultiLinesState();
}

class _MultiLinesState extends State<MultiLines> {
  ScrollController _controller1 = ScrollController();
  ScrollController _controller2 = ScrollController();
   GlobalKey containerKey = GlobalKey();
  double containerHeight = 300;
  @override
  void initState() {
    super.initState();
    _controller1.addListener(() {
      if (_controller1.position.pixels != _controller2.position.pixels) {
        _controller2.jumpTo(_controller1.position.pixels);
      }
    });

    _controller2.addListener(() {
      if (_controller2.position.pixels != _controller1.position.pixels) {
        _controller1.jumpTo(_controller2.position.pixels);
      }
    });
   
   
  }

  @override
  void dispose() {
    _controller1.dispose();
    _controller2.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;


    return Scaffold(
      appBar: AppBar(
        title: Text("Dependent Horizontal Scroll"),
      ),
      body: Center(
        child: Column(
          children: [
            NotificationListener<ScrollNotification>(
              onNotification: (notification) {
                return true;
              },
              child: SingleChildScrollView(
                controller: _controller1,
                scrollDirection: Axis.horizontal,
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
                                  subtitle: '{no}',
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
                  ]
                ),
              ),
            ),
            NotificationListener<ScrollNotification>(
              onNotification: (notification) {
                return true;
              },
              child: Expanded(
               
                child: ListView(
                  shrinkWrap: true,
  children: <Widget>[
        SingleChildScrollView(
                controller: _controller2,
                scrollDirection: Axis.horizontal,
          child: Row(
            textBaseline: TextBaseline.alphabetic,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(

                            children: [
                              Container(
                                  height: 30,
                                  width: 30,
                                
                                ),
                                
                                 Container(
                                  height: 30,
                                  width: 30,
                                
                                ),
                            ],
                          ),
                            SizedBox(width: 5.w,),
                   
                      Container(
                        color: Colors.blue,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                color: Colors.red,
                                height: containerHeight,
                                width: 100.w,
                                child: Multi(
                                    color: Colors.black,
                                    subtitle: "Authentication",
                                    weight: FontWeight.bold,
                                    size: 10),
                              ),
                              
                               Container(
                                 height: containerHeight,
                                width: 100.w,
                                child: Multi(
                                    color: Colors.black,
                                    subtitle: "Authentication",
                                    weight: FontWeight.bold,
                                    size: 10),
                              ),
                            ],
                        ),
                      ),
                      SizedBox(width: 5.w,),
                      Column(
                          children: [
                            Container(
                              // height: 80.h,
                              key: containerKey,
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
                          ],
                      ),
                      SizedBox(width: 5.w,),
                      Column(
                          children: [
                            Container(
                                 height: containerHeight,
                                width: 100.w,
                                decoration: BoxDecoration(color: Colors.grey),
                            
                            ),
                             Container(
                                height: containerHeight,
                                width: 100.w,
                                decoration: BoxDecoration(color: Colors.grey),
                            
                            ),
                          ],
                      ),
                      SizedBox(width: 5.w,),
                       Column(
                           children: [
                             Container(
                                 height: containerHeight,
                                width: 100.w,
                                decoration: BoxDecoration(color: Colors.grey),
                              
                      ),
                       Container(
                                 height: containerHeight,
                                width: 100.w,
                                decoration: BoxDecoration(color: Colors.grey),
                            
                            ),
                           ],
                       ),
                      SizedBox(width: 5.w,),
                      Column(
                          children: [
                            Container(
                                 height: containerHeight,
                                width: 100.w,
                                decoration: BoxDecoration(color: Colors.grey),
                             
                            ),
                             Container(
                                 height: containerHeight,
                                width: 100.w,
                                decoration: BoxDecoration(color: Colors.grey),
                            
                            ),
                          ],
                      ),
                      SizedBox(width: 5.w,),
                       Column(
                           children: [
                             Container(
                                 height: containerHeight,
                                width: 100.w,
                                decoration: BoxDecoration(color: Colors.grey),
                              ),
                               Container(
                                 height: containerHeight,
                                width: 100.w,
                                decoration: BoxDecoration(color: Colors.grey),
                            
                            ),
                           ],
                       ),
                        ]
                      ),
        ),
        

  ],
)
                
                // ListView.builder(
                //   shrinkWrap: true,
                //   itemCount: 3,
                //   itemBuilder: (context,index){
                //     return                       Row(
                //       children: List.generate(
                //         20,
                //         (index) => Container(
                //           width: 100,
                //           height: 100,
                //           margin: EdgeInsets.all(8),
                //           color: Colors.green,
                //           child: Center(
                //             child: Text("Row 2, Item $index"),
                //           ),
                //         ),
                //       ),
                //     );
                //   }),
              ),
            ),
          
        
       
          ],
        ),
      ),
    );
  }
}




// Column(
//                     children: [
                      // Row(
                      //   children: List.generate(
                      //     20,
                      //     (index) => Container(
                      //       width: 100,
                      //       height: 100,
                      //       margin: EdgeInsets.all(8),
                      //       color: Colors.green,
                      //       child: Center(
                      //         child: Text("Row 2, Item $index"),
                      //       ),
                      //     ),
                      //   ),
                      // ),
//                       Row(
//                         children: List.generate(
//                           20,
//                           (index) => Container(
//                             width: 100,
//                             height: 100,
//                             margin: EdgeInsets.all(8),
//                             color: Colors.green,
//                             child: Center(
//                               child: Text("Row 2, Item $index"),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),