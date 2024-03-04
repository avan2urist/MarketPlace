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
      'https://ae04.alicdn.com/kf/U3efcd4dff0174d07815ae8f2b65b762aR.png',
      'https://center-av.ru/resources/bodies/93df639cdef623919af2964dbebd21d688973cc7.jpg',
      'https://ivanglazunov.ru/wp-content/uploads/5/f/b/5fb856193dccfe4d49178be9adf66ff2.jpeg',
    ],
    price: '1.290.000',
  ),
  LadaCar(
    name: 'Niva Urban',
    imageUrl: [
      'https://i.cenyavto.com/2017/10/8b0bec60f94ca63ba37716054f3c0c9f.jpg',
      'https://sportishka.com/uploads/posts/2022-04/1651231193_3-sportishka-com-p-lada-niva-urban-mashini-krasivo-foto-3.jpg',
      'https://sportishka.com/uploads/posts/2022-04/1651231218_24-sportishka-com-p-lada-niva-urban-mashini-krasivo-foto-25.jpg',
    ],
    price: '907.500',
  ),
  LadaCar(
    name: 'Lada Granta',
    imageUrl: [
      'https://a.d-cd.net/KAAAAgBgGeA-1920.jpg',
      'https://toyota-faq.ru/wp-content/uploads/8/f/0/8f073da62ae5119dd6b023b7e94e4ab0.jpeg',
      'https://tiida-nissan.ru/wp-content/uploads/2019/05/1542282075_1535539472_01_new_lada_granta_se_background.jpg',
    ],
    price: '500.000',
  ),
  LadaCar(
    name: 'Lada Vesta',
    imageUrl: [
      'https://rulikolesa.ru/wp-content/uploads/2017/02/maxresdefault-2.jpg',
      'https://vesta-site.ru/wp-content/uploads/2017/07/angk-vesta.jpg',
      'https://avtoshark.com/wp-content/uploads/2022/11/lada-vesta.jpeg',
    ],
    price: '600.000',
  ),
];
