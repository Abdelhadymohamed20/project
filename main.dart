import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_xlider/flutter_xlider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter demo',
      home: App(),
    );
  }
}

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 400,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: ExactAssetImage("assets/image/mobile.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Container(
              width: 300,
              height: 225,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(120.0),
                  bottomRight: Radius.circular(10.0),
                  bottomLeft: Radius.circular(10.0),
                  topLeft: Radius.circular(10.0),
                ),
                color: Color.fromRGBO(30, 44, 105, 1),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 40,
                      ),
                      Container(
                        child: SvgPicture.asset('assets/image/logo.svg'),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 40,
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(12, 18, 42, 1),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: SvgPicture.asset('assets/image/document.svg'),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(12, 18, 42, 1),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: SvgPicture.asset('assets/image/folder.svg'),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        padding: EdgeInsets.all(13),
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(12, 18, 42, 1),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: SvgPicture.asset('assets/image/upload.svg'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 300,
              height: 250,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(30, 44, 105, 1),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Stack(
                overflow: Overflow.visible,
                children: [
                  Container(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 45,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 30,
                            ),
                            RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                text: 'You’ve used',
                                style: TextStyle(
                                    color: Color.fromRGBO(152, 164, 219, 1),
                                    fontSize: 15),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: ' 815 GB',
                                    style: TextStyle(
                                      color: Color.fromRGBO(212, 214, 249, 1),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(text: ' of your storage'),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        FlutterSlider(
                          values: [815],
                          max: 1000,
                          min: 0,
                          handlerHeight: 17,
                          handlerWidth: 17,
                          trackBar: FlutterSliderTrackBar(
                              inactiveTrackBar: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Color.fromRGBO(20, 31, 75, 1),
                                border:
                                    Border.all(width: 5, color: Colors.black12),
                              ),
                              activeTrackBar: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                  colors: [
                                    Color.fromRGBO(255, 159, 149, 1),
                                    Color.fromRGBO(255, 80, 140, 1),
                                  ],
                                ),
                                borderRadius: BorderRadius.circular(20),
                                color: Color.fromRGBO(20, 31, 75, 1),
                              ),
                              activeTrackBarHeight: 20,
                              inactiveTrackBarHeight: 20),
                          handler: FlutterSliderHandler(
                            decoration: BoxDecoration(),
                            child: Material(
                              color: Color.fromRGBO(255, 255, 255, 0),
                              child: Container(
                                width: 100,
                                height: 100,
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              "0 GB",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color.fromRGBO(212, 214, 249, 1),
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              width: 180,
                            ),
                            Text(
                              "1000 GB",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color.fromRGBO(212, 214, 249, 1),
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 200,
                    left: 65,
                    child: Container(
                      width: 150,
                      height: 100,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 25,
                          ),
                          RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                              text: '185 ',
                              style: TextStyle(
                                  color: Color.fromRGBO(0, 0, 0, 1),
                                  fontSize: 35,fontWeight: FontWeight.bold),
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'GB left',
                                  style: TextStyle(
                                    color: Color.fromRGBO(150, 148, 156, 1),
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
