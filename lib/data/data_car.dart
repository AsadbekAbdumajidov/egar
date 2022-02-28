import 'package:avtosalon/data/modul.dart';
import 'package:flutter/cupertino.dart';

Map homeIndex = {
  0: {
    "name": "Chevrolet",
    "seriya": [
      "Nexia 3",
      "Lasetti",
      "Malibu 1",
      "Malibu 2",
      "Malibu 3",
      "Kaptiva 2",
      "Kaptiva 3",
      "Kaptiva 4",
      "Kaptiva 5",
      "Kobalt",
      "Damas",
      "Spark",
      "Equinox",
      "Traverse",
      "Tahoe",
      "Trailblazer",
      "Tracker"
    ],
    "narx": [
      "\$106",
      "\$138",
      "\$127",
      "\$131",
      "\$136",
      "\$219",
      "\$207",
      "\$124",
      "\$142",
      "\$107",
      "\$174",
      "\$174",
      "\$141",
      "\$158",
      "\$173",
      "\$139",
      "\$122"
    ],
    "foto": [
      "assets/image/nexia3.png",
      "assets/image/Lasetti.png",
      "assets/image/malibu1.png",
      "assets/image/malibu2.png",
      "assets/image/malibu3.png",
      "assets/image/kaptiva2.png",
      "assets/image/kaptiva3.png",
      "assets/image/kaptiva4.png",
      "assets/image/kaptiva5.webp",
      "assets/image/kobalt.png",
      "assets/image/damas.png",
      "assets/image/spark.png",
      "assets/image/equinox.png",
      "assets/image/Traverse.png",
      "assets/image/Tahoe.png",
      "assets/image/traiblazr.png",
      "assets/image/Tracker.png"
    ],
    "saved": [
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0"
    ]
  },
  1: {
    "name": "BMW",
    "seriya": [
      "BMW X5",
      "BMW M5 Sedan",
      "BMW M4",
      "BMW IX3",
      "BMW 5 Tourismo",
      "BMW 5 sedan",
      "BMW 4 Kupe(G22)",
      "BMW X6 M",
      "BMW X6 (G06)",
      "BMW M8 Cabrio",
      "BMW I8 Roadster",
      "BMW I3",
      "BMW 8 Cabrio (G14)",
      "BMW Z4 Roadster",
    ],
    "narx": [
      "\$900",
      "\$980",
      "\$690",
      "\$670",
      "\$570",
      "\$610",
      "\$540",
      "\$970",
      "\$940",
      "\$2450",
      "\$400",
      "\$600",
      "\$513",
      "\$2500"
    ],
    "foto": [
      "assets/image/X5.png",
      "assets/image/M5.webp",
      "assets/image/M4.png",
      "assets/image/IX3.png",
      "assets/image/BMW5SeriyaliGranTourismo.png",
      "assets/image/BMW5Seriyalisedan.png",
      "assets/image/Kupe(G22).webp",
      "assets/image/BMW X6 M.png",
      "assets/image/BMW X6 (G06).png",
      "assets/image/BMW M8 Cabrio.png",
      "assets/image/BMW I8 Roadster.png",
      "assets/image/BMW I3.png",
      "assets/image/BMW 8 Seiyali Cabrio (G14).png",
      "assets/image/BMW Z4 Roadster.webp",
    ],
    "saved": [
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0"
    ]
  },
  2: {
    "name": "Lada",
    "seriya": ["Vesta SW Cross", "XRAY Cross", "Largus Cross", "Niva Travel"],
    "narx": ["\$166", "\$171", "\$180", "\$197"],
    "foto": [
      "assets/image/ladasvkros.png",
      "assets/image/xreycros.png",
      "assets/image/largus.webp",
      "assets/image/lada_niva.png"
    ],
    "saved": [
      "0",
      "0",
      "0",
      "0",
    ]
  },
  3: {
    "name": "Mercedes-Benz",
    "seriya": [
      "Mercedes E-Class",
      "Maybach GLS 2020",
      "Mercedes EQV 2020",
      "SL-Class (R231)",
      "G-Class (W463)",
      "E-Class Cabriolet",
      "X-Class (W470)",
      "AMG GT (S190)",
      "S-Class Coupe",
      "E-Class T-Model"
    ],
    "narx": [
      "\$570",
      "\$610",
      "\$540",
      "\$297",
      "\$294",
      "\$245",
      "\$384",
      "\$640",
      "\$215",
      "\$300"
    ],
    "foto": [
      "assets/image/mers1.png",
      "assets/image/mers2.png",
      "assets/image/mers3.webp",
      "assets/image/mers4.webp",
      "assets/image/mers5.png",
      "assets/image/mers6.webp",
      "assets/image/mers7.webp",
      "assets/image/mers8.webp",
      "assets/image/mers9.webp",
      "assets/image/mers10.webp"
    ],
    "saved": ["0", "0", "0", "0", "0", "0", "0", "0", "0", "0"]
  }
};
List<List> indexCatcher = [];
List<int> indexes = [];
List<Jonatish> sav = [];
int currentIndex = 0;


class Data {
 static List tripsSeriya = [];
static  List tripsFoto = [];
 static List tripsNarx = [];
  static final fulName = TextEditingController();
  static final number = TextEditingController();
  static List sbrend = [
    {
      'brend1': 'Land Cruiser 200',
      'brend2': 'Hot offers',
      'brend3': 'assets/image/1.png',
    },
    {
      'brend1': 'Mercedes-Benz 220',
      'brend2': 'Convenient offers',
      'brend3': 'assets/image/2.png',
    },
    {
      'brend1': 'BMW M5 Sport edition',
      'brend2': 'Convenient offers',
      'brend3': 'assets/image/3.png',
    },
    {
      'brend1': 'Toyota Prado',
      'brend2': 'Last added',
      'brend3': 'assets/image/4.png',
    },
    {
      'brend1': 'Chevrolet Corvette',
      'brend2': 'Last added',
      'brend3': 'assets/image/5.png',
    },
    {
      'brend1': 'Chevrolet Camaro',
      'brend2': 'Last added',
      'brend3': 'assets/image/6.png',
    },
  ];

  static List carBrend = [
    {'brend': 'assets/image/chevrolet_logo.png'},
    {'brend': 'assets/image/bmw 1.png'},
    {'brend': 'assets/image/lada-logo.png'},
    {'brend': 'assets/image/mers_logo.png'},
  ];

  static List classFoto = [
    "assets/image/class_foto_1.png",
    "assets/image/class_foto_2.png",
    "assets/image/class_foto_3.png"
  ];
  static List className = ["Economy", "Busines", "Premium"];
  static List km = [">200", "250-300", "400-500", "<500"];
  static List bodyType = ["S.U.V", "Sedan", "Pick-up", "Sport"];
}
