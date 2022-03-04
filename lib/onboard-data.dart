class OnBoarding{
  final String title;
  final String image;
  final String subtitle;

  OnBoarding({
    this.title,
    this.image,
    this.subtitle
  });

}

List<OnBoarding> onBoardingContext = [

  OnBoarding(
    title: 'Temukan Jobs \npilihan yang sudah tersedia',
    image: 'assets/img/image-1.png',
    subtitle: 'Jobsmax merupakan aplikasi yang akan membantu \nkamu menemukan berbagai pekerjaan dengan \nkeahlian yang kamu miliki.'
  ),
  OnBoarding(
    title: 'Kamu hanya perlu \nkoneksi internet untuk memulai',
    image: 'assets/img/image-2.png',
    subtitle: 'Dengan Menggunakan Jobsmax, kamu tidak perlu \nkhawatir lagi tentang penimpuan seperti yang sudah \nbanyak terjadi diluar sana.'
  ),
  OnBoarding(
    title: 'Tunggu apa lagi, ayo \nDaftarkan diri kamu Sekarang',
    image: 'assets/img/image-3.png',
    subtitle: 'Bergabunglah bersama kami dan kamu akan \nmenemukan berbagai jobs yang sesuai dengan \nkeahlianmu.'
  )

];