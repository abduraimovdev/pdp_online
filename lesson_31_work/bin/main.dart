void main() {
  print(Crud.values);
  print(Action.values);
  Colors.values.forEach((element) => print(element.rgb));
  Icons.values.forEach((element) => print(element.icon));
  Images.values.forEach((element) => print(element.path));
  States.values.forEach((element) => print(element.text));
}

// Task - 1
enum Crud {
  Creat,
  Read,
  Update,
  Delete
}

// Task - 2
enum Action {
  Play,
  Pause,
  Next,
  Back;
}

// Task - 3
enum Colors {
  black('#000000'),
  red('#FF0000'),
  yellow('#FFFF00'),
  green('#FFF222'),
  lime('#00FF00'),
  blue('#0000FF'),
  white('#FFFFFF');

  const Colors(this.rgb);
  final String rgb;
}

// Task - 4
enum Icons {
  facebook(
      'https://cdn4.iconfinder.com/data/icons/social-media-flat-7/64/Social-media_Facebook-128.png'),
  youtube(
      'https://cdn4.iconfinder.com/data/icons/social-media-flat-7/64/Social-media_Youtube-128.png'),
  tikTok(
      'https://cdn4.iconfinder.com/data/icons/social-media-flat-7/64/Social-media_Tiktok-128.png'),
  instagram(
      'https://cdn3.iconfinder.com/data/icons/2018-social-media-logotypes/1000/2018_social_media_popular_app_logo_instagram-128.png'),
  chrom(
      'https://cdn2.iconfinder.com/data/icons/social-media-2189/48/17-Google_chrome-128.png'),
  linkedin(
      'https://cdn3.iconfinder.com/data/icons/2018-social-media-logotypes/1000/2018_social_media_popular_app_logo_linkedin-128.png'),
  gmail(
      'https://cdn2.iconfinder.com/data/icons/social-media-2189/48/21-Gmail-128.png');

  const Icons(this.icon);
  final String icon;
}

// Task - 5
enum Images {
  images('/Users/aburaimov/Downloads/Telegram');

  const Images(this.path);
  final String path;
}

// Task - 6

enum States {
  failed('Muammo bo`ldi'),
  loading('Kutilmoqda'),
  success('Muvofaqiyatli'),
  error('Xatolik'),
  downloding('Yuklanmoqta'),
  exit('Chiqib ketish');
  const States(this.text);
  final String text;
}
