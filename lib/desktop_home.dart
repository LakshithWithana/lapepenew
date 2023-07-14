import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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

    return Padding(
      padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 16),
      child: Stack(
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // Expanded(
          //   flex: 1,
          //   child: SizedBox(
          //     height: MediaQuery.of(context).size.height,
          //   ),
          // ),
          Container(
            color: white,
            // decoration: BoxDecoration(
            //     border: Border.all(color: mainColor), color: white),
            height: MediaQuery.of(context).size.height,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 100.0, vertical: 8.0),
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
                  AnimatedOpacity(
                    opacity: pageIndex == 0 ? 1 : 0,
                    duration: const Duration(milliseconds: 800),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // SizedBox(
                        //   width: 300.0.w,
                        //   child: Image.asset("assets/images/logo_cat.png"),
                        // ),
                        RichText(
                          textAlign: TextAlign.justify,
                          text: TextSpan(
                            // Note: Styles for TextSpans must be explicitly defined.
                            // Child text spans will inherit styles from parent
                            style: TextStyle(
                              fontSize: 16.0.sp,
                              color: Colors.black,
                            ),
                            children: const <TextSpan>[
                              TextSpan(
                                  text: 'HodlCat',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              TextSpan(
                                  text:
                                      ' is a meme-centric cryptocurrency that emphasizes patience, resilience, and community engagement. The name '),
                              TextSpan(
                                  text: 'HodlCat',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              TextSpan(text: ' derives from the crypto term '),
                              TextSpan(
                                  text: '"HODL"',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              TextSpan(text: ', an acronym for '),
                              TextSpan(
                                  text: '"Hold On for Dear Life"',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              TextSpan(
                                  text:
                                      ', encouraging investors to withstand the market\'s volatility.'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  AnimatedOpacity(
                    opacity: pageIndex == 1 ? 1 : 0,
                    duration: const Duration(milliseconds: 800),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          text:
                              'HodlCat incorporates a 3% tax on each transaction:\n\n🔸 1% allocated to the marketing wallet.\n🔸 2% converted into BNB and stored in the contract. This pool is distributed proportionally to HodlCat holders weekly, rewarding the most dedicated investors.',
                          fontSize: 16.0.sp,
                          textAlignment: TextAlign.justify,
                        ),
                      ],
                    ),
                  ),
                  AnimatedOpacity(
                    opacity: pageIndex == 2 ? 1 : 0,
                    duration: const Duration(milliseconds: 800),
                    child: Column(
                      children: [
                        CustomText(
                          text:
                              'Community engagement is at the heart of HodlCat. We host regular events like contests and collaborations, fostering a vibrant and supportive environment.',
                          fontSize: 16.0.sp,
                          textAlignment: TextAlign.justify,
                        ),
                      ],
                    ),
                  ),
                  AnimatedOpacity(
                    opacity: pageIndex == 3 ? 1 : 0,
                    duration: const Duration(milliseconds: 800),
                    child: CustomText(
                      text:
                          'Q3 2023: Scratching the Surface\n\nLaunch on PinkSale\nEstablish community on social platforms\nList on CoinMarketCap and CoinGecko\nTrend on Dextools and Dexview\n\nQ4 2023: Whiskers in the Wind\n\nRamp up marketing initiatives\nHost meme contests\nCelebrate community growth milestones\n\nQ1 2024: Feline Momentum\n\nMaintain momentum with innovative marketing\nFoster community culture\nHost "HodlCat Day"\n\nQ2 2024: Cat-astrophic Success\n\nCelebrate HodlCat\'s first anniversary\nShare progress report\nShare vision for HodlCat\'s future',
                      fontSize: 16.0.sp,
                      textAlignment: TextAlign.justify,
                    ),
                  ),
                  AnimatedOpacity(
                    opacity: pageIndex == 4 ? 1 : 0,
                    duration: const Duration(milliseconds: 800),
                    child: Column(
                      children: [
                        CustomText(
                          text:
                              'HodlCat is committed to providing a secure platform for all its holders. We\'ll undergo audits, lock our liquidity pool, and provide clear communication regarding our tokenomics, roadmap, and updates.',
                          fontSize: 16.0.sp,
                          textAlignment: TextAlign.justify,
                        ),
                      ],
                    ),
                  ),
                  AnimatedOpacity(
                    opacity: pageIndex == 5 ? 1 : 0,
                    duration: const Duration(milliseconds: 800),
                    child: Column(
                      children: [
                        CustomText(
                          text:
                              'Creating and investing in a new cryptocurrency involves considerable risks. HodlCat encourages all prospective and current holders to seek advice from financial advisors and conduct their own research.',
                          fontSize: 16.0.sp,
                          textAlignment: TextAlign.justify,
                        ),
                      ],
                    ),
                  ),
                  AnimatedOpacity(
                    opacity: pageIndex == 6 ? 1 : 0,
                    duration: const Duration(milliseconds: 800),
                    child: Column(
                      children: [
                        CustomText(
                          text:
                              'HodlCat aims to blend fun and financial awareness in the crypto world, celebrating meme culture. Join us on this exciting journey!',
                          fontSize: 16.0.sp,
                          textAlignment: TextAlign.justify,
                        ),
                      ],
                    ),
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
      ),
    );
  }
}
