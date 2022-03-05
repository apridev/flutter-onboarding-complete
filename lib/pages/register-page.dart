import 'package:flutter/material.dart';
import 'package:started_complete/template.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 50),
              child: Text(
                'Daftar',
                style:
                    blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Daftarkan akunmu untuk memulai \njelajahi Aplikasi.',
              style: subitleTextColor.copyWith(fontSize: 12),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      );
    }

    Widget name() {
      return Container(
        margin: EdgeInsets.only(
            top: defaulMargin, left: defaulMargin, right: defaulMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Name',
              style: blackTextStyle.copyWith(fontSize: 14, fontWeight: medium),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 12),
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: ellipseColor)),
              child: TextFormField(
                cursorColor: ellipseColor,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Masukan Nama',
                    hintStyle: subitleTextColor),
              ),
            ),
          ],
        ),
      );
    }

    Widget username() {
      return Container(
        margin: EdgeInsets.only(
            top: defaulMargin, left: defaulMargin, right: defaulMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Username',
              style: blackTextStyle.copyWith(fontSize: 14, fontWeight: medium),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 12),
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: ellipseColor)),
              child: TextFormField(
                cursorColor: ellipseColor,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Masukan Username',
                    hintStyle: subitleTextColor),
              ),
            ),
          ],
        ),
      );
    }

    Widget email() {
      return Container(
        margin: EdgeInsets.only(
            top: defaulMargin, left: defaulMargin, right: defaulMargin),
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
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 12),
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: ellipseColor)),
              child: TextFormField(
                cursorColor: ellipseColor,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Masukan Email',
                    hintStyle: subitleTextColor),
              ),
            ),
          ],
        ),
      );
    }

    Widget password() {
      return Container(
        margin: EdgeInsets.only(
            top: defaulMargin, left: defaulMargin, right: defaulMargin),
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
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 12),
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: ellipseColor)),
              child: TextFormField(
                cursorColor: ellipseColor,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Masukan Password',
                    hintStyle: subitleTextColor),
              ),
            ),
          ],
        ),
      );
    }

    Widget buttomNavbar() {
      return Container(
        margin: EdgeInsets.only(top: 50),
        child: Container(
          margin: EdgeInsets.only(left: defaulMargin, right: defaulMargin),
          width: double.infinity,
          height: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12), color: primaryColor),
          child: Center(
            child: Text(
              'Daftar',
              style:
                  whiteTextStyle.copyWith(fontSize: 14, fontWeight: semiBold),
            ),
          ),
        ),
      );
    }

    Widget footer() {
      return Container(
        margin: EdgeInsets.only(top: 20),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Sudah punya akun?',
                style: blackTextStyle.copyWith(fontSize: 12),
              ),
              SizedBox(
                width: 4,
              ),
              GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, '/login-page');
                },
                  child: Text(
                'Masuk',
                style: primaryTextStyle.copyWith(fontSize: 12),
              ))
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
              name(),
              username(),
              email(),
              password(),
              buttomNavbar(),
              footer()
            ],
          ),
        ],
      ),
    );
  }
}
