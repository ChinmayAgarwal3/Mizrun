import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:user/Themes/colors.dart';

class CardContent extends StatelessWidget {
  final String text;
  final String image;

  CardContent({this.text, this.image});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    /*24 is for notification bar on Android*/
    final double itemHeight = (size.height - kToolbarHeight - 24) / 2.2;
    final double itemWidth = size.width / 2.2;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Card(
          child:Expanded(
                      child: Container(
              //alignment: Alignment.center,
              height: itemHeight/2.2,
              width: itemWidth,
                decoration:BoxDecoration(
                  //borderRadius: BorderRadius.circular(15.0),
                    image: DecorationImage(
                         fit: BoxFit.fill,
                         image:NetworkImage(image), 
                         //AssetImage('assets/slider/slider_1.png'),),
                        
                ),
                ),
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                                text,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white, fontWeight: FontWeight.w500, fontSize: 15),
                              ),
            )
                              
                            ),
          ),
        ),
      ],
    );
  }
}




















//         Padding(
//           padding: EdgeInsets.only(left: 5.0, right: 5.0),
//           child: Text(
//             text,
//             textAlign: TextAlign.center,
//             style: TextStyle(
//                 color: black_color, fontWeight: FontWeight.w500, fontSize: 15),
//           ),
//         ),
//       ],
//     );
//   }
// }
