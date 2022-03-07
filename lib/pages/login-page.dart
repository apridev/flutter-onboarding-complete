import 'package:flutter/material.dart';
import 'package:started_complete/template.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  bool isHiddenPassword = true;

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40,
              ),
              Image.asset(
                'assets/img/image-security.png',
                width: 158,
                height: 135,
              ),
            ],
          ),
        ),
      );
    }

    Widget textHeader() {
      return Container(
        margin: EdgeInsets.only(top: 20),
        child: Center(
          child: Column(
            children: [
              Text(
                'Masuk',
                style:
                    blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Masukan data sesuai yang sudah di \ndaftarkan.',
                style: subitleTextColor.copyWith(fontSize: 12),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      );
    }

    Widget email() {
      return Container(
        margin: EdgeInsets.only(
          top: defaulMargin,
          left: defaulMargin,
          right: defaulMargin,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Email',
              style: blackTextStyle.copyWith(fontSize: 14, fontWeight: medium),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: subtitleColor)),
              child: Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      cursorColor: ellipseColor,
                      decoration: InputDecoration.collapsed(
                          hintText: 'Masukan Email',
                          hintStyle: subitleTextColor),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget password() {
      return Container(
        margin: EdgeInsets.only(
          top: 20,
          left: defaulMargin,
          right: defaulMargin,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Password',
              style: blackTextStyle.copyWith(fontSize: 14, fontWeight: medium),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: subtitleColor)),
              child: Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      obscureText: isHiddenPassword,
                      cursorColor: ellipseColor,
                      decoration: InputDecoration.collapsed(
                          hintText: 'Masukan Password',
                          hintStyle: subitleTextColor),
                    ),
                  ),
                  InkWell(
                    onTap: _togglePasswordView,
                    child: isHiddenPassword == true ? Image.asset(
                      'assets/icon/eye-icon.png', 
                      width: 24,
                    ) : Image.asset('assets/icon/eye-off-icon.png', width: 24,)
                  )
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget buttomNav() {
      return Container(
        margin:
            EdgeInsets.only(top: 50, left: defaulMargin, right: defaulMargin),
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12), color: primaryColor),
        child: TextButton(
          onPressed: () {},
          child: Text(
            'Masuk',
            style: whiteTextStyle.copyWith(fontSize: 14, fontWeight: semiBold),
          ),
        ),
      );
    }

    Widget footer() {
      return Container(
        margin: EdgeInsets.only(top: defaulMargin),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Belum Punya Akun?',
                style: blackTextStyle.copyWith(fontSize: 12),
              ),
              SizedBox(
                width: 4,
              ),
              GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, '/register-page');
                },
                child: Text(
                  'Daftar', 
                  style: primaryTextStyle.copyWith(
                    fontSize: 12
                  ),
                ),
              )
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor1,
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              header(),
              textHeader(),
              email(),
              password(),
              buttomNav(),
              footer(),
            ],
          ),
        ],
      ),
    );
  }

  void _togglePasswordView(){
    if(isHiddenPassword == true){
      isHiddenPassword = false;
    } else {
      isHiddenPassword = true;
    }
    setState(() {
      
    });
  }

}
