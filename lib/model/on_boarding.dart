class OnBoarding {
  String title;
  String subTitle;
  String backgroundImage;

  OnBoarding({
    required this.title,
    required this.subTitle,
    required this.backgroundImage,
  });
}

List<OnBoarding> onBoardingList = [
  OnBoarding(
    title: 'Explore Our World',
    subTitle: 'Find the cleanest and hottest styles from the brands you love',
    backgroundImage: 'images/onboarding_1.png',
  ),
  OnBoarding(
    title: 'AI Integration',
    subTitle:
        'Input clothing keywords or styles for AI-powered recommendations',
    backgroundImage: 'images/onboarding_2.png',
  ),
  OnBoarding(
    title: 'Happy Shopping',
    subTitle:
        'It’s time to experience over thousands of stylish products in Genteel',
    backgroundImage: 'images/onboarding_3.png',
  )
];
