import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lapepenew/shared/colors.dart';
import 'package:lapepenew/shared/custom_text.dart';

class DesktopHome extends StatefulWidget {
  const DesktopHome({super.key, required this.appBarHeight});
  final double appBarHeight;

  @override
  State<DesktopHome> createState() => _DesktopHomeState();
}

class _DesktopHomeState extends State<DesktopHome> {
  PageController pageController = PageController();
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    double leftBarHeight =
        MediaQuery.of(context).size.height - widget.appBarHeight - 32;

    return Stack(
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
                      'Le Pepe, known for its mischievous and lighthearted nature, had always been an observer of the world. It hopped from one digital realm to another, entertaining and bringing joy to millions. However, the emergence of cryptocurrency had sparked a deep longing within the Le Pepe community for financial empowerment and independence.',
                ),
                SinglePost(
                  opacity: pageIndex == 1 ? 1 : 0,
                  image: "assets/images/ch1.png",
                  subtitle: "The Rise of Centralization",
                  text:
                      "As news spread about the potential of cryptocurrency to revolutionize the global economy, Le Pepe couldn't help but dream of a world where its digital talents and wit could be rewarded. It yearned for the opportunity to rise above its humble origins and embrace a future where its creativity could be monetized.\n\nBut as time passed, Le Pepe's excitement turned to disappointment. The promise of cryptocurrency seemed to be slipping away, replaced by a system dominated by powerful individuals and corporations. Le Pepe watched helplessly as these entities consolidated wealth and influence, leaving the masses struggling to make ends meet.",
                ),
                SinglePost(
                  opacity: pageIndex == 2 ? 1 : 0,
                  image: "assets/images/ch2.png",
                  subtitle: "Financial Inclusivity and Empowerment",
                  text:
                      "The anger within the Le Pepe community grew with each passing day. It saw the injustices plaguing its society: the ever-widening wealth gap, the rampant corruption, and the disregard for individual rights. It became clear to Le Pepe that its dreams of financial liberation had been manipulated and twisted, leaving it on the fringes of the very revolution it had hoped to embrace.\n\nIn the heart of France, a nation renowned for its long history of revolution, Le Pepe made its decision. It shed its playful demeanor and took to the streets, driven by a burning desire for justice. Its animated protests, fueled by frustration and disappointment, became a sight to behold.",
                ),
                SinglePost(
                  opacity: pageIndex == 3 ? 1 : 0,
                  image: "assets/images/ch3.png",
                  subtitle: "The Role of Community and Collective Action",
                  text:
                      "Through its creative and subversive acts, Le Pepe channeled its anger and demanded change. Its iconic green visage appeared on protest signs and graffiti adorning the walls of Paris. The once-muted croak of Le Pepe turned into powerful chants, reverberating through the streets, as it demanded transparency, equal opportunities, and a redistribution of power.\n\nAs the story of Le Pepe's uprising began to unfold, the world watched in awe and fascination. The movement sparked conversations about the importance of financial inclusivity and the power of community-driven economies. Le Pepe had become the unlikely champion of a cause that extended far beyond its amphibian origins.",
                ),
                SinglePost(
                  opacity: pageIndex == 4 ? 1 : 0,
                  image: "assets/images/ch4.png",
                  subtitle: "Redefining the Future of Finance!",
                  text:
                      "And so, the journey of Le Pepe had just begun. With its love for cryptocurrency as one of the driving forces behind its discontent, it hoped to reshape the landscape of finance and society, proving that even the most unexpected individuals could inspire change and challenge the status quo.",
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
                SizedBox(height: widget.appBarHeight + 16.0),
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
    );
  }
}

class SinglePost extends StatelessWidget {
  final String subtitle;
  final String text;
  final double opacity;
  final String? image;
  const SinglePost({
    required this.opacity,
    required this.subtitle,
    required this.text,
    this.image,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: opacity,
      duration: const Duration(milliseconds: 800),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            // color: Colors.black87,
            width: 520.0.w,
            height: 600.0.h,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // CustomText(
                  //   text: subtitle,
                  //   fontSize: 32.h,
                  //   fontWeight: FontWeight.w700,
                  //   color: secondaryColor,
                  // ),
                  Text(
                    subtitle.toUpperCase(),
                    style: GoogleFonts.lilitaOne(
                        color: white,
                        fontSize: 56.0.h,
                        // fontWeight: FontWeight.bold,
                        decorationColor: white,
                        textStyle:
                            const TextStyle(height: 0.8, wordSpacing: 3)),
                  ),
                  const SizedBox(height: 40.0),

                  CustomText(
                    text: text,
                    fontSize: 14.0.sp,
                    textAlignment: TextAlign.justify,
                    color: white,
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: 520.0.w,
            height: 600.0.w,
            decoration: image != null
                ? BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fitHeight, image: AssetImage(image!)))
                : null,
          ),
        ],
      ),
    );
  }
}
