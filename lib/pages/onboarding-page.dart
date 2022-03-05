import 'package:flutter/material.dart';
import 'package:started_complete/onboard-data.dart';
import 'package:started_complete/template.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({ Key key }) : super(key: key);

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {

  int currentIndex = 0;

  PageController _pageController = PageController(initialPage: 0);

  AnimatedContainer dotIndicator(index){
      return AnimatedContainer(
        duration: Duration(milliseconds: 400),
        margin: EdgeInsets.only(
          right: 5
        ),
        height: 10,
        width: currentIndex == index ? 30 : 12,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: currentIndex == index ? primaryColor : ellipseColor
        ),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor1,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 8,
              child: PageView.builder(
                onPageChanged: (value){
                  setState(() {
                    currentIndex = value;
                  });
                },
                controller: _pageController,
                itemCount: onBoardingContext.length,
                itemBuilder: (
                  (context, index) => Column(
                    children: [
                      SizedBox(
                        height: 120,
                      ),
                      Text(
                        onBoardingContext[index].title,
                        style: blackTextStyle.copyWith(
                          fontSize: 18,
                          fontWeight: semiBold
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Image.asset(
                        onBoardingContext[index].image,
                        width: 300,
                        height: 275,
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Text(
                        onBoardingContext[index].subtitle,
                        style: subitleTextColor.copyWith(
                          fontSize: 12,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 30,
                      )
                    ],
                  )
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  currentIndex == onBoardingContext.length -1 ? Container(
                    height: 50,
                    width: double.infinity,
                    margin: EdgeInsets.only(
                      right: defaulMargin,
                      left: defaulMargin
                    ),
                    child: TextButton(
                      // !Bagian slide terakhir
                      onPressed: (){
                        Navigator.pushNamed(context, '/login-page');
                      }, 
                      style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)
                        ),
                        backgroundColor: primaryColor,
                      ),
                      child: Text(
                        'Masuk',
                        style: whiteTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: semiBold
                        ),
                        )
                      ),
                  ) :
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      onBordingNavBtn(
                        name: 'Masuk',
                        // !Sisi kiri bagian slide
                        onPressed: (){
                          Navigator.pushNamed(context, '/login-page');
                        },
                      ),
                      Row(
                        children: List.generate(onBoardingContext.length, (index) => dotIndicator(index)),
                      ),
                      InkWell(
                        child: TextButton(
                          style: TextButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12)
                            ),
                            padding: EdgeInsets.symmetric(
                              horizontal: 12
                            ),
                            backgroundColor: primaryColor,
                          ),
                          onPressed: (){
                            _pageController.nextPage(duration: Duration(milliseconds: 400), curve: Curves.easeInOut);
                          },
                          child: Text(
                            'Lewati',
                            style: whiteTextStyle.copyWith(
                              fontSize: 14,
                              fontWeight: semiBold
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              )
            )
          ],
        ),
      ),
    );
  }
}

class onBordingNavBtn extends StatelessWidget {
   onBordingNavBtn({
    this.name,
    this.onPressed,
    Key key,
  }) : super(key: key);
  String name;
  VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(12),
      splashColor: backgroundColor1,
      onTap: onPressed,
      child: Text(
        'Masuk',
        style: blackTextStyle.copyWith(
          fontSize: 14,
          fontWeight: semiBold
        ),
      ),
    );
  }
}