

import 'package:flutter/material.dart';

class ClipImage extends StatefulWidget {
  const ClipImage({super.key});

  @override
  State<ClipImage> createState() => _ClipImageState();
}

class _ClipImageState extends State<ClipImage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Clip Image"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipPath(
          clipper: MyClipper(),
            child: Image.asset("assets/images/peakpx.jpg",fit: BoxFit.cover,)),
      ),
    );
  }
}



class MyClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {


    var mPath = Path();

    mPath.lineTo(size.width, 0);
    mPath.lineTo(size.width, size.height);



    mPath.quadraticBezierTo(size.width*0.75, size.height*0.5,size.width*0.5, size.height);
    mPath.quadraticBezierTo(size.width*0.25, size.height*0.5,0, size.height);








    mPath.close();




    // mPath.lineTo(size.width, size.height*0.7);
    // mPath.cubicTo(size.width*0.75, size.height*0.5, size.width*0.25, size.height*0.5, 0, size.height*0.7);



    // mPath.quadraticBezierTo(size.width*0.2, size.height*0.4,size.width, 0);
    // mPath.quadraticBezierTo(size.width*0.2, size.height*0.2, 0, size.height);
    // mPath.close();


    // mPath.moveTo(size.width, size.height);
    // mPath.lineTo(size.width*0.5, size.height*0.5);
    // mPath.lineTo(0, size.height);
    // mPath.close();


    // mPath.moveTo(size.width, 0);
    // mPath.lineTo(size.width*0.5, size.height*0.5);
    // mPath.lineTo(size.width, size.height);
    // mPath.close();


    // mPath.lineTo(size.width, 0);
    // mPath.lineTo(0, size.height);
    // mPath.close();


    return mPath;


  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {

  return true;
  }

}








// Padding(
// padding: const EdgeInsets.all(8.0),
// child: ClipRRect(
// borderRadius: BorderRadius.circular(50),
//
// child: SizedBox(
// height: 100,
// width: 100,
// child: Image.asset("assets/images/peakpx.jpg",fit: BoxFit.cover,))),
// )



//
// ClipOval(
//
// child: SizedBox(
// height: 100,
// width: 100,
// child: Image.asset("assets/images/peakpx.jpg",fit: BoxFit.cover,)))
//

//
// ClipRRect(
// borderRadius: BorderRadius.circular(21),
// child: Image.asset("assets/images/peakpx.jpg"))
