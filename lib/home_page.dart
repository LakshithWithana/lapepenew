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

  PageController pageController = PageController();
  int pageIndex = 0;

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
            pageController.animateToPage(0,
                duration: const Duration(milliseconds: 1000),
                curve: Curves.easeOutSine);
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
                  onPressed: () {
                    pageController.animateToPage(0,
                        duration: const Duration(milliseconds: 1000),
                        curve: Curves.easeOutSine);
                  },
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
                    pageController.animateToPage(1,
                        duration: const Duration(milliseconds: 1000),
                        curve: Curves.easeOutSine);
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
                    pageController.animateToPage(5,
                        duration: const Duration(milliseconds: 1000),
                        curve: Curves.easeOutSine);
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

    double leftBarHeight =
        MediaQuery.of(context).size.height - appBar.preferredSize.height - 32;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: appBar,
      body: width <= 990
          ? MobileHome(appBarHeight: appBar.preferredSize.height)
          : Stack(
              children: [
                Container(
                  // color: white,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          colorFilter: ColorFilter.matrix(<double>[
                            1,
                            0,
                            pageIndex == 4 ? 2 : 0,
                            0,
                            0,
                            pageIndex == 1 ? 1 : 0,
                            1,
                            pageIndex == 5 ? 2 : 0,
                            0,
                            0,
                            0,
                            pageIndex == 2 ? 1 : 0,
                            1,
                            0,
                            0,
                            0,
                            0,
                            pageIndex == 3 ? 2 : 0,
                            1,
                            0,
                          ]),
                          fit: BoxFit.cover,
                          image:
                              // pageIndex == 0
                              //     ? const AssetImage("assets/images/2nd_screen.png")
                              //     :
                              const AssetImage("assets/images/bg.png"))),
                  height: MediaQuery.of(context).size.height,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(150.0, 8.0, 58.0, 24.0),
                    // padding:
                    //     const EdgeInsets.symmetric(horizontal: 100.0, vertical: 8.0),
                    child: PageView(
                      scrollDirection: Axis.vertical,
                      pageSnapping: true,
                      controller: pageController,
                      onPageChanged: (index) {
                        setState(() {
                          pageIndex = index;
                        });
                        print(pageIndex);
                      },
                      children: [
                        SinglePost(
                          opacity: pageIndex == 0 ? 1 : 0,
                          image: "assets/images/char.png",
                          subtitle: "The Promise of Cryptocurrency",
                          text:
                              'La Pepe, known for its mischievous and lighthearted nature, had always been an observer of the world. It hopped from one digital realm to another, entertaining and bringing joy to millions. However, the emergence of cryptocurrency had sparked a deep longing within the La Pepe community for financial empowerment and independence.',
                        ),
                        SinglePost(
                          opacity: pageIndex == 1 ? 1 : 0,
                          image: "assets/images/ch1.png",
                          subtitle: "The Rise of Centralization",
                          text:
                              "As news spread about the potential of cryptocurrency to revolutionize the global economy, La Pepe couldn't help but dream of a world where its digital talents and wit could be rewarded. It yearned for the opportunity to rise above its humble origins and embrace a future where its creativity could be monetized.\n\nBut as time passed, La Pepe's excitement turned to disappointment. The promise of cryptocurrency seemed to be slipping away, replaced by a system dominated by powerful individuals and corporations. La Pepe watched helplessly as these entities consolidated wealth and influence, leaving the masses struggling to make ends meet.",
                        ),
                        SinglePost(
                          opacity: pageIndex == 2 ? 1 : 0,
                          image: "assets/images/ch2.png",
                          subtitle: "Financial Inclusivity and Empowerment",
                          text:
                              "The anger within the La Pepe community grew with each passing day. It saw the injustices plaguing its society: the ever-widening wealth gap, the rampant corruption, and the disregard for individual rights. It became clear to La Pepe that its dreams of financial liberation had been manipulated and twisted, leaving it on the fringes of the very revolution it had hoped to embrace.\n\nIn the heart of France, a nation renowned for its long history of revolution, La Pepe made its decision. It shed its playful demeanor and took to the streets, driven by a burning desire for justice. Its animated protests, fueled by frustration and disappointment, became a sight to behold.",
                        ),
                        SinglePost(
                          opacity: pageIndex == 3 ? 1 : 0,
                          image: "assets/images/ch3.png",
                          subtitle:
                              "The Role of Community and Collective Action",
                          text:
                              "Through its creative and subversive acts, La Pepe channeled its anger and demanded change. Its iconic green visage appeared on protest signs and graffiti adorning the walls of Paris. The once-muted croak of La Pepe turned into powerful chants, reverberating through the streets, as it demanded transparency, equal opportunities, and a redistribution of power.\n\nAs the story of La Pepe's uprising began to unfold, the world watched in awe and fascination. The movement sparked conversations about the importance of financial inclusivity and the power of community-driven economies. La Pepe had become the unlikely champion of a cause that extended far beyond its amphibian origins.",
                        ),
                        SinglePost(
                          opacity: pageIndex == 4 ? 1 : 0,
                          image: "assets/images/ch4.png",
                          subtitle: "Redefining the Future of Finance!",
                          text:
                              "And so, the journey of La Pepe had just begun. With its love for cryptocurrency as one of the driving forces behind its discontent, it hoped to reshape the landscape of finance and society, proving that even the most unexpected individuals could inspire change and challenge the status quo.",
                        ),
                        SinglePost(
                          opacity: pageIndex == 5 ? 1 : 0,
                          subtitle: "Tokenomics",
                          text:
                              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                        ),
                        SinglePost(
                          opacity: pageIndex == 6 ? 1 : 0,
                          subtitle: "Wallet & Transaction",
                          text:
                              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 16.0,
                  child: SizedBox(
                    height: leftBarHeight + 72,
                    // color: mainColor.withOpacity(0.1),
                    child: Column(
                      children: [
                        const SizedBox(height: 72.0),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 14.0),
                          child: InkWell(
                            onTap: () {
                              pageController.animateToPage(0,
                                  duration: const Duration(milliseconds: 1000),
                                  curve: Curves.easeOutSine);
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0),
                                color: pageIndex == 0
                                    ? mainColor
                                    : mainColor.withOpacity(0.3),
                              ),
                              width: 5.0,
                              height: leftBarHeight / 7 - 16,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 14.0),
                          child: InkWell(
                            onTap: () {
                              pageController.animateToPage(1,
                                  duration: const Duration(milliseconds: 1000),
                                  curve: Curves.easeOutSine);
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0),
                                color: pageIndex == 1
                                    ? mainColor
                                    : mainColor.withOpacity(0.3),
                              ),
                              width: 5.0,
                              height: leftBarHeight / 7 - 16,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 14.0),
                          child: InkWell(
                            onTap: () {
                              pageController.animateToPage(2,
                                  duration: const Duration(milliseconds: 1000),
                                  curve: Curves.easeOutSine);
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0),
                                color: pageIndex == 2
                                    ? mainColor
                                    : mainColor.withOpacity(0.3),
                              ),
                              width: 5.0,
                              height: leftBarHeight / 7 - 16,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 14.0),
                          child: InkWell(
                            onTap: () {
                              pageController.animateToPage(3,
                                  duration: const Duration(milliseconds: 1000),
                                  curve: Curves.easeOutSine);
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0),
                                color: pageIndex == 3
                                    ? mainColor
                                    : mainColor.withOpacity(0.3),
                              ),
                              width: 5.0,
                              height: leftBarHeight / 7 - 16,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 14.0),
                          child: InkWell(
                            onTap: () {
                              pageController.animateToPage(4,
                                  duration: const Duration(milliseconds: 1000),
                                  curve: Curves.easeOutSine);
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0),
                                color: pageIndex == 4
                                    ? mainColor
                                    : mainColor.withOpacity(0.3),
                              ),
                              width: 5.0,
                              height: leftBarHeight / 7 - 16,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 14.0),
                          child: InkWell(
                            onTap: () {
                              pageController.animateToPage(5,
                                  duration: const Duration(milliseconds: 1000),
                                  curve: Curves.easeOutSine);
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0),
                                color: pageIndex == 5
                                    ? mainColor
                                    : mainColor.withOpacity(0.3),
                              ),
                              width: 5.0,
                              height: leftBarHeight / 7 - 16,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 14.0),
                          child: InkWell(
                            onTap: () {
                              pageController.animateToPage(6,
                                  duration: const Duration(milliseconds: 1000),
                                  curve: Curves.easeOutSine);
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0),
                                color: pageIndex == 6
                                    ? mainColor
                                    : mainColor.withOpacity(0.3),
                              ),
                              width: 5.0,
                              height: leftBarHeight / 7 - 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}
