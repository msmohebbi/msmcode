import 'package:msmcode/project_model.dart';

var allProjects = [
  AppProject(
    id: '1',
    name: 'Vibonet',
    slug: 'vibonet',
    platforms: [
      'Android',
      'iOS',
    ],
    iconPath: 'assets/images/projects/vibonet_icon.png',
    techs: {
      'flutter': 'Flutter',
      'djangorest': 'Django Rest Framework',
      'postgres': 'PostgreSQL',
      'azure': 'Azure',
    },
    about: 'Social Media, Dating and Market Place Application',
    introduction: '''
Global social media with market place, job seeker and dating.
Explore new friends, make connections, chat with them and have a good time.
Android & IOS app base on Flutter & Django & Azure cloud.
''',
    start: '09/2023',
    end: 'Present',
    imageList: [
      'assets/images/projects/vibonet/1.jpg',
      'assets/images/projects/vibonet/2.jpg',
      'assets/images/projects/vibonet/3.jpg',
      'assets/images/projects/vibonet/4.jpg',
      'assets/images/projects/vibonet/5.jpg',
      'assets/images/projects/vibonet/6.jpg',
    ],
    download: [
      {
        'slug': 'googleplay',
        'name': 'Google Play',
        'link':
            'https://play.google.com/store/apps/details?id=com.vibonet.android',
      },
      {
        'slug': 'appstore',
        'name': 'App Store',
        'link': 'https://apps.apple.com/us/app/vibonet/id6739668045',
      },
    ],
  ),
  AppProject(
    id: '2',
    name: 'UniDooni',
    slug: 'unidooni',
    platforms: [
      'Android',
      'iOS',
      'Web',
    ],
    iconPath: 'assets/images/projects/unidooni_icon.png',
    techs: {
      'flutter': 'Flutter',
      'djangorest': 'Django Rest Framework',
      'postgres': 'PostgreSQL',
    },
    about: 'Academy Course Finder & Consulter Applications and WebApp',
    introduction:
        '''We have provided a large world in one place for the information students need to make informed decisions about their studies. From the introduction and comparison of all fields, universities, cities and countries of the world in one place, to the opportunity of scholarships and personal consultations, communication and hostel reservations.
We are committed to helping everyone in the world find their path to success quickly, accurately and in a personalized way.''',
    start: '08/2022',
    imageList: [
      'assets/images/projects/unidooni/1.jpg',
      'assets/images/projects/unidooni/2.jpg',
      'assets/images/projects/unidooni/3.jpg',
      'assets/images/projects/unidooni/4.jpg',
      'assets/images/projects/unidooni/5.jpg',
      'assets/images/projects/unidooni/6.jpg',
    ],
    download: [
      {
        'slug': 'bazaar',
        'name': 'Bazaar',
        'link': 'https://cafebazaar.ir/app/com.pishranesh.unidooni?l=en',
      },
      {
        'slug': 'myket',
        'name': 'Myket',
        'link': 'https://myket.ir/app/com.pishranesh.unidooni',
      },
      {
        'slug': 'anardooni',
        'name': 'Anardooni',
        'link': 'https://anardoni.com/ios/app/compishraneshunidooni',
      },
      {
        'slug': 'sibapp',
        'name': 'SibApp',
        'link': 'https://sibapp.com/applications/UniDooni',
      },
      {
        'slug': 'pwa',
        'name': 'PWA',
        'link': 'https://unidooni.com',
      },
    ],
    end: '06/2024',
  ),
  AppProject(
    id: '3',
    name: 'Daric',
    slug: 'daric',
    platforms: [
      'Android',
      'iOS',
    ],
    iconPath: 'assets/images/projects/daric_icon.png',
    techs: {
      'flutter': 'Flutter',
      'firebase': 'Firebase',
    },
    about: 'Exchange Application',
    introduction: 'Exchange Application',
    start: '05/2023',
    end: '10/2023',
    imageList: [
      'assets/images/projects/daric/1.jpg',
      'assets/images/projects/daric/2.jpg',
      'assets/images/projects/daric/3.jpg',
      'assets/images/projects/daric/4.jpg',
      'assets/images/projects/daric/5.jpg',
    ],
    download: [
      {
        'slug': 'googleplay',
        'name': 'Google Play',
        'link':
            'https://play.google.com/store/apps/details?id=ca.daricexchange.daric',
      },
      {
        'slug': 'appstore',
        'name': 'App Store',
        'link': 'https://apps.apple.com/bf/app/daric/id6460134118',
      },
    ],
  ),

  AppProject(
    id: '4',
    name: 'In Jadeh',
    slug: 'injadeh',
    platforms: [
      'Android',
      'iOS',
      'Web',
    ],
    iconPath: 'assets/images/projects/injadeh_icon.png',
    techs: {
      'flutter': 'Flutter',
      'djangorest': 'Django Rest Framework',
      'postgres': 'PostgreSQL',
    },
    about: 'Vehicle Repair Application',
    introduction:
        'An app for heavy vehicle owners to find trusted mechanics, request repairs, and track services easily',
    start: '01/2024',
    end: '05/2024',
    imageList: [
      'assets/images/projects/injadeh/1.jpg',
      'assets/images/projects/injadeh/2.jpg',
      'assets/images/projects/injadeh/3.jpg',
      'assets/images/projects/injadeh/4.jpg',
      'assets/images/projects/injadeh/5.jpg',
      'assets/images/projects/injadeh/6.jpg',
    ],
    download: [
      {
        'slug': 'bazaar',
        'name': 'Bazaar',
        'link': 'https://cafebazaar.ir/app/com.pishranesh.injadeh',
      },
      // {
      //   'slug': 'sibapp',
      //   'name': 'SibApp',
      //   'link': 'https://sibapp.com/applications/NovinTaxi?from=search',
      // },
      // {
      //   'slug': 'anardooni',
      //   'name': 'Anardooni',
      //   'link': 'https://anardoni.com/ios/app/compishraneshnovintaxi',
      // },
      {
        'slug': 'pwa',
        'name': 'PWA',
        'link': 'https://injadeh.ir/',
      },
    ],
  ),

  AppProject(
    id: '5',
    name: 'Shakib Learn',
    slug: 'shakib_learn',
    platforms: [
      'Android',
      'iOS',
      'Web',
    ],
    iconPath: 'assets/images/projects/shakiblearn_icon.png',
    techs: {
      'flutter': 'Flutter',
      'djangorest': 'Django Rest Framework',
      'mysql': 'MySQL',
    },
    about: 'E-Learning Cross-Platform Applications and WebApp',
    introduction: 'E-Learning Cross-Platform Applications and WebApp',
    start: '09/2021',
    end: '01/2022',
    imageList: [
      'assets/images/projects/shakiblearn/1.jpg',
      'assets/images/projects/shakiblearn/2.jpg',
      'assets/images/projects/shakiblearn/3.jpg',
      'assets/images/projects/shakiblearn/4.jpg',
      'assets/images/projects/shakiblearn/5.jpg',
      'assets/images/projects/shakiblearn/6.jpg',
    ],
    download: [
      {
        'slug': 'googleplay',
        'name': 'Google Play',
        'link':
            'https://play.google.com/store/apps/details?id=com.pishranesh.shakiblearn',
      },
      {
        'slug': 'sibapp',
        'name': 'SibApp',
        'link': 'https://sibapp.com/applications/ShakibLearn?from=search',
      },
      {
        'slug': 'anardooni',
        'name': 'Anardooni',
        'link': 'https://anardoni.com/ios/app/compishraneshshakiblearn',
      },
      {
        'slug': 'pwa',
        'name': 'PWA',
        'link': 'https://shakiblearn.com/',
      },
    ],
  ),
  AppProject(
    id: '6',
    name: 'Novin Taxi',
    slug: 'novin_taxi',
    platforms: [
      'Android',
      'iOS',
      'Web',
    ],
    iconPath: 'assets/images/projects/novintaxi_icon.png',
    techs: {
      'flutter': 'Flutter',
      'djangorest': 'Django Rest Framework',
      'postgres': 'PostgreSQL',
    },
    about: 'User & Driver Application for Inter-city Transportation',
    introduction: 'User & Driver Application for Inter-city Transportation',
    start: '06/2023',
    imageList: [
      'assets/images/projects/novintaxi/1.jpg',
      'assets/images/projects/novintaxi/2.jpg',
      'assets/images/projects/novintaxi/3.jpg',
      'assets/images/projects/novintaxi/4.jpg',
      'assets/images/projects/novintaxi/5.jpg',
      'assets/images/projects/novintaxi/6.jpg',
      'assets/images/projects/novintaxi/7.jpg',
    ],
    download: [
      {
        'slug': 'bazaar',
        'name': 'Bazaar',
        'link': 'https://cafebazaar.ir/app/com.pishranesh.novintaxi',
      },
      {
        'slug': 'sibapp',
        'name': 'SibApp',
        'link': 'https://sibapp.com/applications/NovinTaxi?from=search',
      },
      {
        'slug': 'anardooni',
        'name': 'Anardooni',
        'link': 'https://anardoni.com/ios/app/compishraneshnovintaxi',
      },
      {
        'slug': 'pwa',
        'name': 'PWA',
        'link': 'https://novintaxi.com/',
      },
    ],
    end: '12/2023',
  ),
  AppProject(
    id: '7',
    name: 'Secret TV',
    slug: 'secret_tv',
    platforms: [
      'Android',
      'iOS',
      'Web',
    ],
    iconPath: 'assets/images/projects/secrettv_icon.png',
    techs: {
      'flutter': 'Flutter',
      'djangorest': 'Django Rest Framework',
      'postgres': 'PostgreSQL',
    },
    about:
        'Social Media about Motivation and Coaching, Applications and WebApp',
    introduction:
        'Social Media introduction Motivation and Coaching, Applications and WebApp',
    start: '02/2022',
    imageList: [
      'assets/images/projects/secrettv/1.jpg',
      'assets/images/projects/secrettv/2.jpg',
      'assets/images/projects/secrettv/3.jpg',
      'assets/images/projects/secrettv/4.jpg',
      'assets/images/projects/secrettv/5.jpg',
    ],
    download: [
      {
        'slug': 'googleplay',
        'name': 'Google Play',
        'link':
            'https://play.google.com/store/apps/details?id=com.pishranesh.secrettv',
      },
      {
        'slug': 'sibapp',
        'name': 'SibApp',
        'link': 'https://sibapp.com/applications/SecretTV?from=search',
      },
      {
        'slug': 'anardooni',
        'name': 'Anardooni',
        'link': 'https://anardoni.com/ios/app/compishraneshsecrettv',
      },
      {
        'slug': 'pwa',
        'name': 'PWA',
        'link': 'https://secret-tv.com/',
      },
    ],
    end: '05/2022',
  ),

  // AppProject(
  //   id: '7',
  //   name: 'JooPeg',
  //   slug: 'joopeg',
  //   platforms: [
  //     'Android',
  //     'iOS',
  //   ],
  //   iconPath: 'assets/images/projects/joopeg_icon.png',
  //   techs: {
  //     'flutter': 'Flutter',
  //     'firebase': 'Firebase',
  //   },
  //   about: 'Social Media Application',
  //   introduction: 'Social Media Application',
  //   start: '4/2023',
  //   end: 'Present',
  //   imageList: [],
  //   download: [
  //     {
  //       'slug': 'googleplay',
  //       'name': 'Google Play',
  //       'link':
  //           'https://play.google.com/store/apps/details?id=com.joopeg.joopeg',
  //     },
  //     {
  //       'slug': 'appstore',
  //       'name': 'App Store',
  //       'link': 'https://apps.apple.com/us/app/joopeg/id1642271839',
  //     },
  //   ],
  // ),
  AppProject(
    id: '8',
    name: 'Sudus',
    slug: 'sudus',
    platforms: [
      'Android',
      'iOS',
    ],
    iconPath: 'assets/images/projects/sudus_icon.png',
    techs: {
      'flutter': 'Flutter',
      'firebase': 'Firebase',
    },
    about: 'Cryptocurrency and Copy-Trading Platform',
    introduction: 'Cryptocurrency and Copy-Trading Platform',
    start: '03/2020',
    end: '9/2020',
    imageList: [
      'assets/images/projects/sudus/1.jpg',
      'assets/images/projects/sudus/2.jpg',
      'assets/images/projects/sudus/3.jpg',
      'assets/images/projects/sudus/4.jpg',
      'assets/images/projects/sudus/5.jpg',
    ],
    download: [],
  ),
  AppProject(
    id: '9',
    name: 'Behnasr',
    slug: 'behnasr',
    platforms: [
      'Android',
    ],
    iconPath: 'assets/images/projects/behnasr_icon.png',
    techs: {
      'flutter': 'Flutter',
    },
    about: 'OCR (Image to Text) Application',
    introduction: 'OCR (Image to Text) Application',
    start: '07/2023',
    end: '09/2023',
    imageList: [
      'assets/images/projects/behnasr/1.jpg',
      'assets/images/projects/behnasr/2.jpg',
      'assets/images/projects/behnasr/3.jpg',
      'assets/images/projects/behnasr/4.jpg',
      'assets/images/projects/behnasr/5.jpg',
    ],
    download: [],
  ),

  // AppProject(
  //   id: '10',
  //   name: 'Delif',
  //   slug: 'delif',
  //   platforms: [
  //     'Android',
  //     'iOS',
  //     'Web',
  //   ],
  //   iconPath: 'assets/images/projects/delif_icon.png',
  //   techs: {
  //     'flutter': 'Flutter',
  //     'djangorest': 'Django Rest Framework',
  //     'mysql': 'MySQL',
  //   },
  //   about: 'Logestic and Market Place Apllications and WebApp',
  //   introduction: 'Logestic and Market Place Apllications and WebApp',
  //   start: '01/2021',
  //   end: '10/2021',
  //   imageList: [],
  //   download: [],
  // ),
  AppProject(
    id: '11',
    name: 'Dr Mohsen Valizadeh',
    slug: 'dr_mohsen_valizadeh',
    platforms: [
      'Web',
    ],
    iconPath: 'assets/images/projects/drmv_icon.png',
    techs: {
      'flutter': 'Flutter',
      'djangorest': 'Django Rest Framework',
    },
    about: 'Appointment schedule & Info For Medical Clinic',
    introduction: 'Appointment schedule & Info For Medical Clinic',
    start: '04/2023',
    end: '05/2023',
    imageList: [
      'assets/images/projects/drm/1.jpg',
    ],
    download: [
      {
        'slug': 'pwa',
        'name': 'PWA',
        'link': 'https://drmohsenvalizadeh.ir/',
      },
    ],
  ),
  AppProject(
    id: '12',
    name: 'Sorena',
    slug: 'sorena',
    platforms: [
      'Android',
    ],
    iconPath: 'assets/images/projects/sorena_icon.png',
    techs: {
      'flutter': 'Flutter',
    },
    about: 'Organizing proples in groups and contact them',
    introduction: 'Organizing proples in groups and contact them',
    start: '04/2022',
    end: '05/2022',
    imageList: [
      'assets/images/projects/sorena/1.jpg',
      'assets/images/projects/sorena/2.jpg',
      'assets/images/projects/sorena/3.jpg',
    ],
    download: [],
  ),
  AppProject(
    id: '13',
    name: 'DGAPco',
    slug: 'dgapco',
    platforms: [
      'Web',
    ],
    iconPath: 'assets/images/projects/dgap_icon.png',
    techs: {
      'django': 'Django',
      'postgres': 'Postgresql',
      'bootstrap': 'Bootstrap',
      'jquery': 'jQuery',
    },
    about: 'E-commerce Website & Intera-Company Website',
    introduction: 'E-commerce Website & Intera-Company Website',
    start: '02/2019',
    end: '07/2019',
    imageList: [
      'assets/images/projects/dgap/1.jpg',
      'assets/images/projects/dgap/2.jpg',
      'assets/images/projects/dgap/3.jpg',
      'assets/images/projects/dgap/4.jpg',
      'assets/images/projects/dgap/5.jpg',
    ],
    download: [
      {
        'slug': 'pwa',
        'name': 'PWA',
        'link': 'https://dgapco.ir/',
      },
    ],
  ),
];
