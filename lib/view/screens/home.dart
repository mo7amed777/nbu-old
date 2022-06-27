import 'package:carousel_slider/carousel_slider.dart';
import 'package:demo/view/widgets/appbar.dart';
import 'package:demo/view/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';
import 'package:odometer/odometer.dart';

import '../constants/consts.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  AnimationController? animationController;
  late Animation<OdometerNumber> animation;
  int counter = 0, endCounter = 1000;

  @override
  void initState() {
    animationController =
        AnimationController(duration: const Duration(seconds: 5), vsync: this);
    animation = OdometerTween(
            begin: OdometerNumber(counter), end: OdometerNumber(endCounter))
        .animate(
      CurvedAnimation(curve: Curves.bounceInOut, parent: animationController!),
    );
    animationController?.forward();
    super.initState();
  }

  @override
  void dispose() {
    animationController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(
        title: 'Home',
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          PopupMenuButton(
            elevation: 0.0,
            color: Colors.green[800],
            position: PopupMenuPosition.under,
            itemBuilder: (context) => [
              PopupMenuItem(child: Center(child: Icon(Icons.language))),
              PopupMenuItem(child: Center(child: Icon(Icons.dark_mode))),
              PopupMenuItem(child: Center(child: Icon(Icons.mic))),
              PopupMenuItem(
                child: Center(
                    child: PopupMenuButton(
                  elevation: 0.0,
                  color: Colors.green[800],
                  position: PopupMenuPosition.under,
                  icon: Icon(Icons.apps),
                  itemBuilder: (BuildContext context) => [
                    PopupMenuItem(
                        child: Center(
                            child: Column(
                      children: const [
                        Icon(Icons.people),
                        Text(
                          'Employees',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ))),
                    PopupMenuItem(
                        child: Center(
                            child: Column(
                      children: const [
                        Icon(Icons.person),
                        Text(
                          'Students',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ))),
                    PopupMenuItem(
                        child: Center(
                            child: Column(
                      children: const [
                        Icon(Icons.person_pin),
                        Text(
                          'Faculty Member',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ))),
                    PopupMenuItem(
                        child: Center(
                            child: Column(
                      children: const [
                        Icon(Icons.home_repair_service),
                        Text(
                          'E-services',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ))),
                    PopupMenuItem(
                        child: Center(
                            child: Column(
                      children: const [
                        Icon(Icons.email),
                        Text(
                          'Email',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ))),
                    PopupMenuItem(
                        child: Center(
                            child: Column(
                      children: const [
                        Icon(Icons.calendar_month),
                        Text(
                          'Calendar',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ))),
                  ],
                )),
              ),
            ],
            icon: Icon(Icons.more_vert),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Image.asset(
              'assets/images/home/bg.jpg',
              fit: BoxFit.fill,
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
            ),
            CarouselSlider(
              items: HomeSliderImages.map((item) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      item,
                      fit: BoxFit.fill,
                    ),
                  )).toList(),
              options: CarouselOptions(
                aspectRatio: 16 / 9,
                initialPage: 0,
                viewportFraction: 1,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                onPageChanged: (index, _) {},
                scrollDirection: Axis.horizontal,
              ),
            ),
            Positioned(
              top: 220,
              left: 0,
              right: 0,
              bottom: 10,
              child: Marquee(
                text: 'Welcome to the new era of learning',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 25,
                ),
                scrollAxis: Axis.horizontal,
                crossAxisAlignment: CrossAxisAlignment.start,
                blankSpace: 20.0,
                velocity: 500.0,
                pauseAfterRound: Duration(seconds: 1),
                startPadding: 10.0,
                accelerationDuration: Duration(milliseconds: 500),
                accelerationCurve: Curves.linear,
                decelerationDuration: Duration(milliseconds: 500),
                decelerationCurve: Curves.easeOut,
              ),
            ),
            //vision_logo
            Positioned(
              left: 0,
              right: 0,
              top: 250,
              bottom: 200,
              child: Card(
                margin: EdgeInsets.all(8.0),
                elevation: 10,
                child: Image.asset(
                  'assets/images/home/vision_logo.png',
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Positioned(
              bottom: 0.0,
              left: 0.0,
              right: 0.0,
              child: CarouselSlider(
                items: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 30),
                                child: SlideOdometerTransition(
                                  letterWidth: 20,
                                  odometerAnimation: animation,
                                  numberTextStyle: const TextStyle(
                                      fontSize: 25,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Text(
                                'Students',
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.white,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 30),
                                child: SlideOdometerTransition(
                                  letterWidth: 20,
                                  odometerAnimation: animation,
                                  numberTextStyle: const TextStyle(
                                      fontSize: 25,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Text(
                                'Colleges',
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.white,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 30),
                                child: SlideOdometerTransition(
                                  letterWidth: 20,
                                  odometerAnimation: animation,
                                  numberTextStyle: const TextStyle(
                                      fontSize: 25,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Text(
                                'Alumni',
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.white,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 30),
                                child: SlideOdometerTransition(
                                  letterWidth: 20,
                                  odometerAnimation: animation,
                                  numberTextStyle: const TextStyle(
                                      fontSize: 30,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Text(
                                'Faculty Members',
                                softWrap: true,
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.white,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 30),
                                child: SlideOdometerTransition(
                                  letterWidth: 20,
                                  odometerAnimation: animation,
                                  numberTextStyle: const TextStyle(
                                      fontSize: 30,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Text(
                                'Staff Members',
                                softWrap: true,
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.white,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
                options: CarouselOptions(
                  aspectRatio: 16 / 9,
                  initialPage: 0,
                  viewportFraction: 1.0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  onPageChanged: (index, _) {},
                  scrollDirection: Axis.horizontal,
                ),
              ),
            ),
          ],
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}

class BottomNavBarCurvedFb1 extends StatefulWidget {
  const BottomNavBarCurvedFb1({Key? key}) : super(key: key);

  @override
  _BottomNavBarCurvedFb1State createState() => _BottomNavBarCurvedFb1State();
}

class _BottomNavBarCurvedFb1State extends State<BottomNavBarCurvedFb1> {
  //- - - - - - - - - instructions - - - - - - - - - - - - - - - - - -
  // WARNING! MUST ADD extendBody: true; TO CONTAINING SCAFFOLD
  //
  // Instructions:
  //
  // add this widget to the bottomNavigationBar property of a Scaffold, along with
  // setting the extendBody parameter to true i.e:
  //
  // Scaffold(
  //  extendBody: true,
  //  bottomNavigationBar: BottomNavBarCurvedFb1()
  // )
  //
  // Properties such as color and height can be set by changing the properties at the top of the build method
  //
  // For help implementing this in a real app, watch https://www.youtube.com/watch?v=C0_3w0kd0nc. The style is different, but connecting it to navigation is the same.
  //
  //- - - - - - - - - - - - - - -  - - - - - - - - - - - - - - - - - -

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = 56;

    final primaryColor = Colors.orange;
    final secondaryColor = Colors.black54;
    final accentColor = const Color(0xffffffff);
    final backgroundColor = Colors.white;

    return BottomAppBar(
      color: Colors.transparent,
      elevation: 0,
      child: Stack(
        children: [
          CustomPaint(
            size: Size(size.width, height + 6),
            painter: BottomNavCurvePainter(backgroundColor: backgroundColor),
          ),
          Center(
            heightFactor: 0.6,
            child: FloatingActionButton(
                backgroundColor: primaryColor,
                child: Icon(Icons.shopping_basket),
                elevation: 0.1,
                onPressed: () {}),
          ),
          Container(
            height: height,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                NavBarIcon(
                  text: "Home",
                  icon: Icons.home_outlined,
                  selected: true,
                  onPressed: () {},
                  defaultColor: secondaryColor,
                  selectedColor: primaryColor,
                ),
                NavBarIcon(
                  text: "Search",
                  icon: Icons.search_outlined,
                  selected: false,
                  onPressed: () {},
                  defaultColor: secondaryColor,
                  selectedColor: primaryColor,
                ),
                SizedBox(width: 56),
                NavBarIcon(
                    text: "Cart",
                    icon: Icons.local_grocery_store_outlined,
                    selected: false,
                    onPressed: () {},
                    defaultColor: secondaryColor,
                    selectedColor: primaryColor),
                NavBarIcon(
                  text: "Calendar",
                  icon: Icons.date_range_outlined,
                  selected: false,
                  onPressed: () {},
                  selectedColor: primaryColor,
                  defaultColor: secondaryColor,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class BottomNavCurvePainter extends CustomPainter {
  BottomNavCurvePainter(
      {this.backgroundColor = Colors.white, this.insetRadius = 38});

  Color backgroundColor;
  double insetRadius;
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = backgroundColor
      ..style = PaintingStyle.fill;
    Path path = Path()..moveTo(0, 12);

    double insetCurveBeginnningX = size.width / 2 - insetRadius;
    double insetCurveEndX = size.width / 2 + insetRadius;
    double transitionToInsetCurveWidth = size.width * .05;
    path.quadraticBezierTo(size.width * 0.20, 0,
        insetCurveBeginnningX - transitionToInsetCurveWidth, 0);
    path.quadraticBezierTo(
        insetCurveBeginnningX, 0, insetCurveBeginnningX, insetRadius / 2);

    path.arcToPoint(Offset(insetCurveEndX, insetRadius / 2),
        radius: Radius.circular(10.0), clockwise: false);

    path.quadraticBezierTo(
        insetCurveEndX, 0, insetCurveEndX + transitionToInsetCurveWidth, 0);
    path.quadraticBezierTo(size.width * 0.80, 0, size.width, 12);
    path.lineTo(size.width, size.height + 56);
    path.lineTo(
        0,
        size.height +
            56); //+56 here extends the navbar below app bar to include extra space on some screens (iphone 11)
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

class NavBarIcon extends StatelessWidget {
  const NavBarIcon(
      {Key? key,
      required this.text,
      required this.icon,
      required this.selected,
      required this.onPressed,
      this.selectedColor = const Color(0xffFF8527),
      this.defaultColor = Colors.black54})
      : super(key: key);
  final String text;
  final IconData icon;
  final bool selected;
  final Function() onPressed;
  final Color defaultColor;
  final Color selectedColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: onPressed,
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          icon: Icon(
            icon,
            size: 25,
            color: selected ? selectedColor : defaultColor,
          ),
        ),
      ],
    );
  }
}
