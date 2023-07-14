import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lapepenew/desktop_home.dart';
import 'package:lapepenew/mobile_home.dart';
import 'package:lapepenew/shared/colors.dart';
import 'package:lapepenew/shared/custom_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ScrollController bodyScrollController = ScrollController();

  final aboutUsKey = GlobalKey();
  final tokenInfoKey = GlobalKey();

  @override
  void dispose() {
    bodyScrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    final GlobalKey<ScaffoldState> drawerKey = GlobalKey();

    AppBar appBar = AppBar(
      centerTitle: false,
      backgroundColor: Colors.transparent,
      surfaceTintColor: Colors.transparent,
      title: Padding(
        padding: width <= 990
            ? const EdgeInsets.all(0)
            : EdgeInsets.fromLTRB(40.0.h, 0, 0, 0),
        child: TextButton(
          style: ButtonStyle(
              overlayColor: MaterialStateProperty.all<Color>(secondaryColor)),
          onPressed: () {
            // bodyScrollController.animateTo(0.0,
            //     duration: const Duration(seconds: 1), curve: Curves.easeIn);
          },
          child: SizedBox(
            width: 150.0,
            child: Image.asset(
              "assets/images/lapepelogo.png",
              fit: BoxFit.fitWidth,
            ),
          ),
          // CustomText(
          //   text: "La Pepe",
          //   fontSize: 32.0.h,
          //   color: mainColor,
          //   fontWeight: FontWeight.bold,
          // ),
        ),
      ),
      actions: width <= 990
          ? null
          : [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0.w),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: mainColor,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    ),
                  ),
                  onPressed: () {},
                  child: CustomText(
                    text: "Home",
                    fontSize: 20.0.h,
                    color: white,
                    // fontWeight: FontWeight.bold,
                  ),
                ),
                // TextButton(
                //   style: ButtonStyle(
                //       overlayColor:
                //           MaterialStateProperty.all<Color>(secondaryColor)),
                //   onPressed: () {
                //     bodyScrollController.animateTo(0.0,
                //         duration: const Duration(seconds: 1),
                //         curve: Curves.easeIn);
                //   },
                //   child: CustomText(
                //     text: "Home",
                //     fontSize: 20.0.h,
                //     color: mainColor,
                //     fontWeight: FontWeight.bold,
                //   ),
                // ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0.w),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: mainColor,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    ),
                  ),
                  onPressed: () {
                    // Scrollable.ensureVisible(aboutUsKey.currentContext!,
                    //     duration: const Duration(seconds: 1),
                    //     curve: Curves.easeIn);
                  },
                  child: CustomText(
                    text: "About Us",
                    fontSize: 20.0.h,
                    color: white,
                    // fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0.w),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: mainColor,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    ),
                  ),
                  onPressed: () {
                    // Scrollable.ensureVisible(tokenInfoKey.currentContext!,
                    //     duration: const Duration(seconds: 1),
                    //     curve: Curves.easeIn);
                  },
                  child: CustomText(
                    text: "Token Info",
                    fontSize: 20.0.h,
                    color: white,
                    // fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              // Padding(
              //   padding: EdgeInsets.symmetric(horizontal: 20.0.w),
              //   child: TextButton(
              //     onPressed: () {},
              //     child: CustomText(
              //       text: "EN",
              //       fontSize: 20.0.h,
              //       color: Colors.black,
              //     ),
              //   ),
              // ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0.w),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: mainColor,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    ),
                  ),
                  onPressed: () {
                    // html.window
                    //     .open("https://t.me/pepeninjapanda", "Telegram");
                  },
                  child: const Icon(
                    Icons.telegram,
                    size: 30.0,
                    color: white,
                  ),
                ),
                // IconButton(
                //   onPressed: () {
                //     // html.window
                //     //     .open("https://t.me/pepeninjapanda", "Telegram");
                //   },
                //   icon: const Icon(
                //     Icons.telegram,
                //     size: 40.0,
                //     color: white,
                //   ),
                // ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0.w),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: mainColor,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    ),
                  ),
                  onPressed: () {
                    // html.window
                    //     .open("https://t.me/pepeninjapanda", "Telegram");
                  },
                  child: Image.asset(
                    "assets/images/white_twitter.png",
                    height: 20.0,
                  ),
                ),
                // IconButton(
                //   onPressed: () {
                //     // html.window
                //     //     .open("https://t.me/pepeninjapanda", "Telegram");
                //   },
                //   icon: const Icon(
                //     Icons.telegram,
                //     size: 40.0,
                //     color: white,
                //   ),
                // ),
              ),
              // Padding(
              //   padding: EdgeInsets.fromLTRB(20.0.w, 0, 80.0.w, 0),
              //   child: IconButton(
              //     onPressed: () {
              //       // html.window
              //       //     .open("https://twitter.com/ThePepePanda", "Twitter");
              //     },
              //     icon: Image.asset("assets/images/white_twitter.png"),
              //   ),
              // ),
            ],
    );

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: appBar,
      body: width <= 990
          ? MobileHome(appBarHeight: appBar.preferredSize.height)
          : DesktopHome(appBarHeight: appBar.preferredSize.height),
    );
  }
}
