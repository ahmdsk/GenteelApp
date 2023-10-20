import 'package:flutter/material.dart';
import 'package:genteel_app/model/on_boarding.dart';
import 'package:genteel_app/screen/auth/signin_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onboarding/onboarding.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  late Material materialButton;
  late int index;
  final onboardingPagesList = onBoardingList.map((board) {
    return PageModel(
      widget: Stack(
        fit: StackFit.expand,
        children: [
          DecoratedBox(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(board.backgroundImage),
                  fit: BoxFit.cover,
                  alignment: Alignment.topCenter),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              bottom: 32.0,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  board.title,
                  style: GoogleFonts.prata(
                    fontSize: 32,
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14.0),
                  child: Text(
                    board.subTitle,
                    style: GoogleFonts.nunito(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }).toList();

  @override
  void initState() {
    super.initState();
    materialButton = _skipButton();
    index = 0;
  }

  Material _skipButton({void Function(int)? setIndex}) {
    return Material(
      borderRadius: const BorderRadius.all(Radius.circular(4.0)),
      color: const Color(0xFF78F208),
      child: Container(
        alignment: Alignment.center,
        child: InkWell(
          onTap: () {
            if (setIndex != null) {
              debugPrint("index ke $index");
              index = 2;
              setIndex(2);
            }
          },
          child: Padding(
            padding: defaultSkipButtonPadding,
            child: Text(
              'Skip',
              style: GoogleFonts.nunito(
                color: const Color(0xFF090A0A),
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Material get _getStartedButton {
    return Material(
      borderRadius: const BorderRadius.all(Radius.circular(4.0)),
      color: const Color(0xFF78F208),
      child: Container(
        alignment: Alignment.center,
        child: InkWell(
          onTap: () {
            debugPrint('Sign Up Ready');
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  return const SignInScreen();
                },
              ),
            );
          },
          child: Padding(
            padding: defaultSkipButtonPadding,
            child: Text(
              'Get Started',
              style: GoogleFonts.nunito(
                color: const Color(0xFF090A0A),
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'OnBoarding',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        body: Onboarding(
          pages: onboardingPagesList,
          onPageChange: (int pageIndex) {
            debugPrint('Change To Index: $index');
            index = pageIndex;
          },
          startPageIndex: 0,
          footerBuilder: (context, dragDistance, pagesLength, setIndex) {
            return Stack(
              alignment: Alignment.bottomCenter,
              clipBehavior: Clip.none,
              children: [
                DecoratedBox(
                  decoration: const BoxDecoration(
                    color: Colors.black,
                  ),
                  child: ColoredBox(
                    color: Colors.transparent,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 30.0,
                        vertical: 20.0,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomIndicator(
                            netDragPercent: dragDistance,
                            pagesLength: pagesLength,
                            indicator: Indicator(
                              indicatorDesign: IndicatorDesign.polygon(
                                polygonDesign: PolygonDesign(
                                  polygon: DesignType.polygon_circle,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 24.0,
                          ),
                          Container(
                            alignment: Alignment.center,
                            child: index == pagesLength - 1
                                ? _getStartedButton
                                : _skipButton(setIndex: setIndex),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
