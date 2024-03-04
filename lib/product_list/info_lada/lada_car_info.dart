class LadaCar {
  final String name;
  final List<String> imageUrl;
  final String price;

  LadaCar({required this.name, required this.imageUrl, required this.price});
}

List<LadaCar> ladaCars = [
  LadaCar(
    name: 'Lada Largus',
    imageUrl: [
      'https://avatars.mds.yandex.net/get-autoru-vos/2177471/da57724f9e80e27ece8cde6532598584/1200x900n',
      'https://avatars.mds.yandex.net/get-autoru-vos/6313114/fd675b1a4d81aef14d73a4ef15be9740/1200x900n',
      'https://avatars.mds.yandex.net/get-autoru-vos/11834178/3f7c912ee15982a673890976c7531f45/1200x900n',
      'https://avatars.mds.yandex.net/get-autoru-vos/6024412/e8db7a2c6da4cdf20089bbc3e99e5af7/1200x900n',
    ],
    price: '1.290.000',
  ),
  LadaCar(
    name: 'Niva Travel',
    imageUrl: [
      'https://avatars.mds.yandex.net/get-autoru-vos/10868311/21f3ce06b2be673ea977ed4f91246fcc/1200x900n',
      'https://avatars.mds.yandex.net/get-autoru-vos/11387356/386254c58e04a0851f67cf0af0a253bc/1200x900n',
      'https://avatars.mds.yandex.net/get-autoru-vos/11373141/b3530185d48fd1de1e26d47a6f67bcb5/1200x900n',
    ],
    price: '907.500',
  ),
  LadaCar(
    name: 'Lada Granta',
    imageUrl: [
      'https://avatars.mds.yandex.net/get-autoru-vos/11789197/50ecd9b92b83fdc7963d924ba26fbadb/1200x900n',
      'https://avatars.mds.yandex.net/get-autoru-vos/11303503/31397ae7e498fee8da49b1f8dbee97e9/1200x900n',
      'https://avatars.mds.yandex.net/get-autoru-vos/11386586/79465635338c29da7b0fd98d2e021a03/1200x900n',
      'https://avatars.mds.yandex.net/get-autoru-vos/6366648/860004f463e1bf2e7f5d120db6e7b3b8/1200x900n',
      'https://avatars.mds.yandex.net/get-autoru-vos/4947503/638bf5ad849c26703e80b8f8714d9569/1200x900n',
      'https://avatars.mds.yandex.net/get-autoru-vos/11386586/ce923317fa48567d1b60cf7a40d7546e/1200x900n',
      'https://avatars.mds.yandex.net/get-autoru-vos/11748220/16a3c78ab702998b7dc8b7b31aa70887/1200x900n',

    ],
    price: '749.000',
  ),
  LadaCar(
    name: 'Lada Vesta',
    imageUrl: [
      'https://avatars.mds.yandex.net/get-autoru-vos/11387356/61c06de0a48cd82649de8947e34e5157/1200x900n',
      'https://avatars.mds.yandex.net/get-autoru-vos/11387356/26a54da71d1e766aa350422bdc71b3ed/1200x900n',
      'https://avatars.mds.yandex.net/get-autoru-vos/10932694/d1cfe983620d20c708b178a1df0d7e4e/1200x900n',
      'https://avatars.mds.yandex.net/get-autoru-vos/11608341/231183fb0f1a8943d650656cecf8e6d5/1200x900n',
      'https://avatars.mds.yandex.net/get-autoru-vos/11317885/0b62dcd6c8b3431e8974782e02d70602/1200x900n',
      'https://avatars.mds.yandex.net/get-autoru-vos/10932694/04550cc7dc0198ba91dfd876a6187d89/1200x900n',
      'https://avatars.mds.yandex.net/get-autoru-vos/2071463/ccae65a5c0a6a642832e9fe4d4482089/1200x900n',
      'https://avatars.mds.yandex.net/get-autoru-vos/11402504/5c1d6bfd42846f9f0c7e42d54241cbf0/1200x900n',

    ],
    price: '1.089.000',
  ),
  LadaCar(
    name: 'Lada XRAY Cross',
    imageUrl: [
      'https://avatars.mds.yandex.net/get-autoru-vos/6147753/c270f441802b0fb4b1682756dc4576f0/1200x900n',
      'https://avatars.mds.yandex.net/get-autoru-vos/6366648/e04ec01743abd404e998c28c0444708c/1200x900n',
      'https://avatars.mds.yandex.net/get-autoru-vos/4614399/fcf8a8c4813f278498e59a52f5f32972/1200x900n',
    ],
    price: '1.190.000',
  ),
  LadaCar(
    name: 'Niva Offroad',
    imageUrl: [
      'https://avatars.mds.yandex.net/get-autoru-vos/2181224/535a890c3e1064c7c0ba9c1bbeaf918a/1200x900n',
      'https://avatars.mds.yandex.net/get-autoru-vos/2181224/4538c8b68e7d2a7cd52e709a3babceb5/1200x900n',
      'https://avatars.mds.yandex.net/get-autoru-vos/11124027/43903dc9412df16af365531e8597006a/1200x900n',
    ],
    price: '1.399.000',
  ),
  LadaCar(
    name: 'Niva Legend Bronto',
    imageUrl: [
      'https://avatars.mds.yandex.net/get-autoru-vos/4557358/6b2872a2f315efbb7e0a21de86f63733/1200x900n',
      'https://avatars.mds.yandex.net/get-autoru-vos/11836446/785eaa2d5533fd8d257aacf02e542878/1200x900n',
      'https://avatars.mds.yandex.net/get-autoru-vos/5138045/089bd0f2e299ea8ce59f99cea098e511/1200x900n',
    ],
    price: '1.380.000',
  ),
  LadaCar(
    name: 'Lada Vesta Sport',
    imageUrl: [
      'https://avatars.mds.yandex.net/get-autoru-vos/11621042/36da4d1b6e1c7e709a44640755d8f10e/1200x900n',
      'https://avatars.mds.yandex.net/get-autoru-vos/8381424/6c455f39313ac27c3ac2b8dd6c36fbeb/1200x900n',
      'https://avatars.mds.yandex.net/get-autoru-vos/11621042/44d5084f380a49c5f9c41443d53e157a/1200x900n',
    ],
    price: '1.348.000',
  ),
];
