import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DataController extends GetxController {
  List dummyLearn = [
    {
      'image': 'assets/images/Ellipse_14.png',
      'title': 'IT’S FREE',
      'subtitle': 'Our courses are free of charge!',
    },
    {
      'image': 'assets/images/Ellipse_15.png',
      'title': 'QUALITY LEARNING',
      'subtitle': 'Our courses is structured learning',
    },
    {
      'image': 'assets/images/Ellipse_16.png',
      'title': 'TAKE IT TO THE NEXT LEVEL',
      'subtitle': 'Build your career with skills employers seek',
    },
  ];

  List dummyAboutUs = [
    {
      'title': 'Intuitive Design',
      'message':
          'I am officially a genious and it’s all thanks to the great course I took on CreSign',
      'name': "Dinda aulia",
      'major': 'Information System ’20'
    },
    {
      'title': 'Amazing Course',
      'message':
          'I am officially a genious and it’s all thanks to the great course I took on CreSign',
      'name': "Wijaya kusuma",
      'major': 'Information Technology ’19'
    },
    {
      'title': 'Great Institutors',
      'message':
          'I am officially a genious and it’s all thanks to the great course I took on CreSign',
      'name': "AlVARO MAHENDRA",
      'major': 'Information Technology Education ‘21'
    },
    {
      'title': 'Inspiring Course',
      'message':
          'I am officially a genious and it’s all thanks to the great course I took on CreSign',
      'name': "AYU DISHA",
      'major': 'Information System ‘21'
    },
  ];

  List dummyCompany = [
    {"title": "About"},
    {"title": "Career"},
    {"title": "Support"},
    {"title": "Term of Service"},
    {"title": "Cookie Policy"},
  ];

  List dummyStudent = [
    {"title": "Design Education"},
    {"title": "Design Portofolio"},
    {"title": "Creative process"},
  ];

  List dummyDesigner = [
    {"title": "Post a design"},
    {"title": "Freelance"},
  ];

  // List dummyDesign = List.generate(12, (index) {
  //   Random random = Random();
  //   return {
  //     "name": "Lorem ipsum ${index + 1}",
  //     "images": "assets/design/design${index + 1}.png",
  //     "profile": "assets/person/person${index + 1}.png",
  //     "likes": random.nextInt(100).toString(),
  //     "views": random.nextInt(100).toString(),
  //   };
  // });

  List dummyDesign = [
    {
      "name": "Adela",
      "about": "Health",
      "images": "assets/design/design1.png",
      "profile": "assets/person/person1.png",
      "likes": "30",
      "views": "120",
      "deskripsi":
          "Desain yang bertemakan luar angka, menunjukkan roket yang sedang meluncur menuju luar angkasa yang ditemani oleh sang bulan. "
    },
    {
      "name": "Alexander",
      "about": "Elegant Design",
      "images": "assets/design/design2.png",
      "profile": "assets/person/person2.png",
      "likes": "60",
      "views": "230",
      "deskripsi":
          "Kami menyediakan desain yang trendi dan inovatif untuk memastikan website Anda tampak segar dan menarik bagi pengunjung"
    },
    {
      "name": "Benjamin",
      "about": "UI/UX Design",
      "images": "assets/design/design3.png",
      "profile": "assets/person/person3.png",
      "likes": "123",
      "views": "300",
      "deskripsi":
          "Kami menyediakan desain yang trendi dan inovatif untuk memastikan website Anda tampak segar dan menarik bagi pengunjung"
    },
    {
      "name": "Charles",
      "about": "Visual Designer",
      "images": "assets/design/design4.png",
      "profile": "assets/person/person4.png",
      "likes": "11",
      "views": "200",
      "deskripsi":
          "Sebagai seorang visual designer, saya menggabungkan estetika yang kuat dengan keahlian teknis untuk menciptakan solusi desain yang memukau dan efektif"
    },
    {
      "name": "David",
      "about": "Musikalis",
      "images": "assets/design/design5.png",
      "profile": "assets/person/person5.png",
      "likes": "45",
      "views": "190",
      "deskripsi":
          "Sebagai seorang visual designer, saya menggabungkan estetika yang kuat dengan keahlian teknis untuk menciptakan solusi desain yang memukau dan efektif"
    },
    {
      "name": "Ethan",
      "about": "NFT",
      "images": "assets/design/design6.png",
      "profile": "assets/person/person6.png",
      "likes": "34",
      "views": "340",
      "deskripsi":
          "Dengan personal website yang dirancang dengan baik, Anda dapat menciptakan pengalaman pengunjung yang memukau dan meninggalkan kesan yang kuat tentang kepribadian dan karya Anda"
    },
    {
      "name": "Gabriel",
      "about": "Spotify Design",
      "images": "assets/design/design7.png",
      "profile": "assets/person/person7.png",
      "likes": "28",
      "views": "123",
      "deskripsi":
          "Dengan menggunakan mockup Spotify, Anda dapat secara visual memperlihatkan bagaimana playlist, album, dan artis terlihat di platform, memberikan gambaran yang jelas tentang pengalaman mendengarkan musik yang menarik dan interaktif bagi pengguna."
    },
    {
      "name": "Agatha",
      "about": "Queena",
      "images": "assets/design/design8.png",
      "profile": "assets/person/person8.png",
      "likes": "78",
      "views": "323",
      "deskripsi":
          "Dengan desain website yang elegan dan tampilan yang menggoda, kami menciptakan pengalaman online yang eksklusif untuk memamerkan koleksi perhiasan yang indah dan mengundang pelanggan untuk merayakan keindahan dan keunikan dalam setiap perhiasan yang kami tawarkan"
    },
    {
      "name": "Alina",
      "about": "Personal Website",
      "images": "assets/design/design9.png",
      "profile": "assets/person/person9.png",
      "likes": "28",
      "views": "123",
      "deskripsi":
          "Dengan personal website, Anda dapat menunjukkan keahlian, membagikan pemikiran, dan mengundang kolaborasi dengan individu dan organisasi yang relevan dalam bidang Anda"
    },
    {
      "name": "Clara",
      "about": "Web Personal",
      "images": "assets/design/design10.png",
      "profile": "assets/person/person10.png",
      "likes": "49",
      "views": "133",
      "deskripsi":
          "Dengan personal website yang dirancang dengan baik, Anda dapat menciptakan pengalaman pengunjung yang memukau dan meninggalkan kesan yang kuat tentang kepribadian dan karya Anda"
    },
    {
      "name": "Diana",
      "about": "Chalatix Agency",
      "images": "assets/design/design11.png",
      "profile": "assets/person/person11.png",
      "likes": "99",
      "views": "283",
      "deskripsi":
          "Melalui personal website, Anda dapat memperluas jaringan, membagikan portofolio kreatif, dan memperkuat kehadiran online Anda sebagai individu yang profesional"
    },
    {
      "name": "Eva",
      "about": "Personal Web",
      "images": "assets/design/design12.png",
      "profile": "assets/person/person12.png",
      "likes": "99",
      "views": "283",
      "deskripsi":
          "Personal website Anda adalah wadah kreatif untuk mengekspresikan diri, berbagi pengalaman, dan membangun merek pribadi yang unik"
    },
  ];

  List dummyMateri = [
    {
      "category": "Bab 1",
      "title": "Prinsip dan Elemen Desain Visual",
      "video": "assets/video/video1.mp4",
      "materi":
          "https://firebasestorage.googleapis.com/v0/b/cresign-5e877.appspot.com/o/pdf%2FBAB%20_1.pdf?alt=media&token=ea48509f-d652-4cf3-aafe-17bd606748a1",
      "deskripsi":
          "Hypertext Markup Language atau yang dikenal dengan sebutan HTML, merupakan sebuah Bahasa markup yang digunakan untuk membuat sebuah web ataupun antarmuka di platform lain. Sebagai sebuah Bahasa markup, HTML bertugas memberikan informasi mengenai isi dari konten tanpa memiliki informasi mengenai style tampilan dari konten tersebut. HTML hanya bertugas untuk memberitahukan kepada web browser bahwa bagian tertentu dari sebuah tulisan merupakan sebuah kutipan atau sesuai dengan elemennya.",
      "questions": [
        {
          "no": "1",
          "question":
              "Penyesuaian tampilan antarmuka dengan karakteristik target pengguna merupakan pengertian dari ...",
          "options": [
            "User Compability",
            "Task Compability",
            "Consistency",
            "Familiarity",
          ]
        },
        {
          "no": "2",
          "question":
              "Upayakan Konsistensi pada tampilan antarmuka, istilah dalam memberikan petunjuk, fungsi dan menu yang ada merupakan salah satu aturan emas yang dinyatakan oleh",
          "options": [
            "Albert Einstein",
            "Deborah J. Mayhew",
            "Tim Berners-Lee",
            "Shneiderman",
          ]
        },
        {
          "no": "3",
          "question":
              "Yang termasuk dalam tahap analisa dan perangcangan adalah ...",
          "options": [
            "Front-End",
            "Interface Design",
            "Model mental",
            "Flexibility",
          ]
        }
      ]
    },
    {
      "category": "Bab 2",
      "title": "Tag Dasar HTML",
      "video": "assets/video/video2.mp4",
      "materi":
          "https://firebasestorage.googleapis.com/v0/b/cresign-5e877.appspot.com/o/pdf%2FBAB_2.pdf?alt=media&token=c06800e3-e4dd-447c-ad19-1ccbed15df20",
      "deskripsi":
          "Pada dokumen HTML sebuah teks bisa memuat instruksi yang ditandai dengan kode atau lebih dikenal dengan TAG. Tag ini dinyatakan dengan sebuah tanda lebih kecil dan lebih besar (< >). Tag biasanya merupakan sebuah pasangan yang disebut tag awal yang berfungsi untuk membuka dan tag akhir yang berfungsi untuk menutup. Tag awal dinyatakan dalam bentuk sedangkan tag akhir dinyatakan dalam bentuk. Tag penutup dituliskan dengan menambahkan garis miring (“/”) setelah simbol “<”.",
      "questions": [
        {
          "no": "1",
          "question": "3 komponen dasar HTML terdiri dari ...",
          "options": [
            "Elemen, Tag, Attribut",
            "Web Browser, Teks Editor, Web Server",
            "Blockquote, Addres, Kuotasi",
            "Selector, Property, Value",
          ]
        },
        {
          "no": "2",
          "question":
              "Informasi tambahan yang dapat kita berikan untuk sebuah elemen merupakan pengertian dari ...",
          "options": [
            "Tag",
            "Elemen",
            "Attribut",
            "Blockquote",
          ]
        },
        {
          "no": "3",
          "question": "<!DOCTYPE html> digunakan untuk ...",
          "options": [
            "Untuk menampung semua yang terdapat pada dokumen HTML dan sebagai penanda awal dan akhir dari dokumen HTML",
            "Untuk memberikan informasi kepada browser mengenai versi HTML yang digunakan",
            "Untuk menampung semua teks yang terdapat di halaman HTML",
            "Untuk menyimpan informasi - informasi mengenai dokumen HTML",
          ]
        }
      ]
    },
    {
      "category": "Bab 3",
      "title": "Konsep Warna, Image, dan Tipografi",
      "video": "assets/video/video3.mp4",
      "materi":
          "https://firebasestorage.googleapis.com/v0/b/cresign-5e877.appspot.com/o/pdf%2FBAB_3.pdf?alt=media&token=fba9071d-61e3-49c3-9924-534d7f63a513",
      "deskripsi":
          "Pengenalan konsep warna, image, dan tipografi dalam preview e-learning dapat dilakukan dengan menampilkan contoh-contoh penggunaan elemen tersebut secara efektif. Contoh-contoh tersebut dapat disertai dengan penjelasan singkat mengenai pengertian dan fungsi masing-masing elemen. Penjelasan singkat mengenai pengertian dan fungsi masing-masing elemen dapat disampaikan dengan menggunakan kalimat yang sederhana dan mudah dipahami.",
      "questions": [
        {
          "no": "1",
          "question": "Beberapa tipe web designer?",
          "options": [
            "Graphic Designer, User, Programmer",
            "Front-End Designer, Information Architect, Programmer",
            "Graphic Designer, User, Programmer",
            "Semua benar",
          ]
        },
        {
          "no": "2",
          "question":
              "Suatu bentuk dasar sebuah halaman web yang akan disinkronisasikan dengan kontent website, adalah pengertian dari ...",
          "options": [
            "Theme",
            "Web style",
            "GUI (Graphical User Interface)",
            "Desain grafis",
          ]
        },
        {
          "no": "3",
          "question":
              "Apa yang paling pertama dilakukan dalam pembuatan sebuah website?",
          "options": [
            "Membuat HTML",
            "Membuat sketsa web site pada kertas",
            "Mempublikasikan website",
            "Mengedit website",
          ]
        }
      ]
    },
  ];

  ScrollController scrollController = ScrollController();

  void scrollTo(double offset) {
    scrollController.animateTo(
      offset,
      duration: Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  List dummyMateri2 = [
    {
      "bab": [
        {
          "category": "Bab 1",
          "title": "Prinsip dan Elemen Desain Visual",
          "video": "assets/video/video1.mp4",
          "materi":
              "https://firebasestorage.googleapis.com/v0/b/cresign-5e877.appspot.com/o/pdf%2FBAB%20_1.pdf?alt=media&token=ea48509f-d652-4cf3-aafe-17bd606748a1",
          "deskripsi":
              "Hypertext Markup Language atau yang dikenal dengan sebutan HTML, merupakan sebuah Bahasa markup yang digunakan untuk membuat sebuah web ataupun antarmuka di platform lain. Sebagai sebuah Bahasa markup, HTML bertugas memberikan informasi mengenai isi dari konten tanpa memiliki informasi mengenai style tampilan dari konten tersebut. HTML hanya bertugas untuk memberitahukan kepada web browser bahwa bagian tertentu dari sebuah tulisan merupakan sebuah kutipan atau sesuai dengan elemennya.",
          "questions": [
            {
              "no": "1",
              "question":
                  "Penyesuaian tampilan antarmuka dengan karakteristik target pengguna merupakan pengertian dari ...",
              "options": [
                "User Compability",
                "Task Compability",
                "Consistency",
                "Familiarity",
              ]
            },
            {
              "no": "2",
              "question":
                  "Upayakan Konsistensi pada tampilan antarmuka, istilah dalam memberikan petunjuk, fungsi dan menu yang ada merupakan salah satu aturan emas yang dinyatakan oleh",
              "options": [
                "Albert Einstein",
                "Deborah J. Mayhew",
                "Tim Berners-Lee",
                "Shneiderman",
              ]
            },
            {
              "no": "3",
              "question":
                  "Yang termasuk dalam tahap analisa dan perangcangan adalah ...",
              "options": [
                "Front-End",
                "Interface Design",
                "Model mental",
                "Flexibility",
              ]
            }
          ]
        },
        {
          "category": "Bab 2",
          "title": "Tag Dasar HTML",
          "video": "assets/video/video2.mp4",
          "materi":
              "https://firebasestorage.googleapis.com/v0/b/cresign-5e877.appspot.com/o/pdf%2FBAB_2.pdf?alt=media&token=c06800e3-e4dd-447c-ad19-1ccbed15df20",
          "deskripsi":
              "Pada dokumen HTML sebuah teks bisa memuat instruksi yang ditandai dengan kode atau lebih dikenal dengan TAG. Tag ini dinyatakan dengan sebuah tanda lebih kecil dan lebih besar (< >). Tag biasanya merupakan sebuah pasangan yang disebut tag awal yang berfungsi untuk membuka dan tag akhir yang berfungsi untuk menutup. Tag awal dinyatakan dalam bentuk sedangkan tag akhir dinyatakan dalam bentuk. Tag penutup dituliskan dengan menambahkan garis miring (“/”) setelah simbol “<”.",
          "questions": [
            {
              "no": "1",
              "question": "3 komponen dasar HTML terdiri dari ...",
              "options": [
                "Elemen, Tag, Attribut",
                "Web Browser, Teks Editor, Web Server",
                "Blockquote, Addres, Kuotasi",
                "Selector, Property, Value",
              ]
            },
            {
              "no": "2",
              "question":
                  "Informasi tambahan yang dapat kita berikan untuk sebuah elemen merupakan pengertian dari ...",
              "options": [
                "Tag",
                "Elemen",
                "Attribut",
                "Blockquote",
              ]
            },
            {
              "no": "3",
              "question": "<!DOCTYPE html> digunakan untuk ...",
              "options": [
                "Untuk menampung semua yang terdapat pada dokumen HTML dan sebagai penanda awal dan akhir dari dokumen HTML",
                "Untuk memberikan informasi kepada browser mengenai versi HTML yang digunakan",
                "Untuk menampung semua teks yang terdapat di halaman HTML",
                "Untuk menyimpan informasi - informasi mengenai dokumen HTML",
              ]
            }
          ]
        },
        {
          "category": "Bab 3",
          "title": "Konsep Warna, Image, dan Tipografi",
          "video": "assets/video/video3.mp4",
          "materi":
              "https://firebasestorage.googleapis.com/v0/b/cresign-5e877.appspot.com/o/pdf%2FBAB_3.pdf?alt=media&token=fba9071d-61e3-49c3-9924-534d7f63a513",
          "deskripsi":
              "Pengenalan konsep warna, image, dan tipografi dalam preview e-learning dapat dilakukan dengan menampilkan contoh-contoh penggunaan elemen tersebut secara efektif. Contoh-contoh tersebut dapat disertai dengan penjelasan singkat mengenai pengertian dan fungsi masing-masing elemen. Penjelasan singkat mengenai pengertian dan fungsi masing-masing elemen dapat disampaikan dengan menggunakan kalimat yang sederhana dan mudah dipahami.",
          "questions": [
            {
              "no": "1",
              "question": "Beberapa tipe web designer?",
              "options": [
                "Graphic Designer, User, Programmer",
                "Front-End Designer, Information Architect, Programmer",
                "Graphic Designer, User, Programmer",
                "Semua benar",
              ]
            },
            {
              "no": "2",
              "question":
                  "Suatu bentuk dasar sebuah halaman web yang akan disinkronisasikan dengan kontent website, adalah pengertian dari ...",
              "options": [
                "Theme",
                "Web style",
                "GUI (Graphical User Interface)",
                "Desain grafis",
              ]
            },
            {
              "no": "3",
              "question":
                  "Apa yang paling pertama dilakukan dalam pembuatan sebuah website?",
              "options": [
                "Membuat HTML",
                "Membuat sketsa web site pada kertas",
                "Mempublikasikan website",
                "Mengedit website",
              ]
            }
          ]
        },
      ]
    },
    {
      "bab": [
        {
          "category": "Bab 4",
          "title": "Konsep Layout dan Komponen UI ",
          "video": "assets/video/video4.mp4",
          "materi":
              "https://firebasestorage.googleapis.com/v0/b/cresign-5e877.appspot.com/o/pdf%2FBAB_4.pdf?alt=media&token=06d29991-beb0-4d12-bbbb-92c4925707b3",
          "deskripsi":
              "Konsep layout dan komponen UI adalah hal yang penting untuk dipelajari oleh setiap desainer UI. Konsep layout digunakan untuk mengatur posisi dan ukuran elemen-elemen UI pada sebuah desain. Komponen UI adalah elemen-elemen yang digunakan untuk membuat desain UI, seperti tombol, menu, dan kotak teks Bab ini akan membahas tentang konsep layout dan komponen UI. Bab ini akan dimulai dengan membahas tentang konsep layout, seperti grid, margin, dan padding. Bab ini diharapkan dapat memberikan pemahaman yang lebih baik tentang konsep layout dan komponen UI.",
          "questions": [
            {
              "no": "1",
              "question": "Prinsip Dasar Desain Layout adalah?",
              "options": [
                "Penggunaan Grid, Penekanan dan Skala, Keseimbangan",
                "Viewport, Grid View, Media Queries",
                "Pseudo Class, Pseudo Element, Transition",
                "Retrieve Nilai, Object String, Dynamic HTML",
              ]
            },
            {
              "no": "2",
              "question":
                  "Ada berapa metode pendekatan dalam menciptakan keseimbangan",
              "options": [
                "1",
                "2",
                "3",
                "4",
              ]
            },
            {
              "no": "3",
              "question":
                  "Prinsip-prinsip dalam penyusunan tata letak terdiri atas, kecuali ...",
              "options": [
                "Kesatuan",
                "Keseimbangan",
                "Layout",
                "Irama",
              ]
            }
          ]
        },
        {
          "category": "Bab 5",
          "title": "Prinsip Guideline",
          "video": "assets/video/video5.mp4",
          "materi":
              "https://firebasestorage.googleapis.com/v0/b/cresign-5e877.appspot.com/o/pdf%2FBAB_5.pdf?alt=media&token=af917a97-e835-429d-b245-ba8dd1a1e16e",
          "deskripsi":
              "Pada dokumen HTML sebuah teks bisa memuat instruksi yang ditandai dengan kode atau lebih dikenal dengan TAG. Tag ini dinyatakan dengan sebuah tanda lebih kecil dan lebih besar (< >). Tag biasanya merupakan sebuah pasangan yang disebut tag awal yang berfungsi untuk membuka dan tag akhir yang berfungsi untuk menutup. Tag awal dinyatakan dalam bentuk sedangkan tag akhir dinyatakan dalam bentuk. Tag penutup dituliskan dengan menambahkan garis miring (“/”) setelah simbol “<”.",
          "questions": [
            {
              "no": "1",
              "question":
                  "Kombinasi Warna ini hanya dengan warna hitam putih saja tidak menggunakan warna lain ...",
              "options": [
                "Akromatik",
                "Monokrom",
                "Komplementer",
                "Diagonal",
              ]
            },
            {
              "no": "2",
              "question":
                  "Yang bukan termasuk ke dalam jenis-jenis ketebalan garis adalah...",
              "options": [
                "Staright",
                "Dash",
                "Berpola",
                "Horizontal",
              ]
            },
            {
              "no": "3",
              "question":
                  "Elemen desain yang sangat berpengaruh untuk menarik perhatian dalam proses pembuatan desain agar tercapainya suatu komunikasi dengan media cetak atapun digital disebut...",
              "options": [
                "Compability",
                "Bentuk",
                "Warna",
                "Shape",
              ]
            }
          ]
        }
      ]
    },
    {
      "bab": [
        {
          "category": "Bab 6",
          "title": "Struktur HTML Lanjut",
          "video": "assets/video/video6.mp4",
          "materi":
              "https://firebasestorage.googleapis.com/v0/b/cresign-5e877.appspot.com/o/pdf%2FBAB_6.pdf?alt=media&token=a3788431-4023-4738-b622-608d7d6bd41a",
          "deskripsi":
              "Hypertext Markup Language atau yang dikenal dengan sebutan HTML, merupakan sebuah Bahasa markup yang digunakan untuk membuat sebuah web ataupun antarmuka di platform lain. Sebagai sebuah Bahasa markup, HTML bertugas memberikan informasi mengenai isi dari konten tanpa memiliki informasi mengenai style tampilan dari konten tersebut. HTML hanya bertugas untuk memberitahukan kepada web browser bahwa bagian tertentu dari sebuah tulisan merupakan sebuah kutipan atau sesuai dengan elemennya.",
          "questions": [
            {
              "no": "1",
              "question":
                  "Sintak yang benar untuk menambah warna latar belakang...",
              "options": [
                "<body =’background:green’>",
                "<background size= 200px>",
                "background>green</background>",
                "<body style=’background-color:green’>",
              ]
            },
            {
              "no": "2",
              "question": "Berikut ini yang menjadi standarisasi Web ...",
              "options": [
                "ECMAN (uropean Computer Manufacturers Association)",
                "W3C (World Wide Web Consortium)",
                "JS (Java Script)",
                "PSR (PHP Standars Recommendation)",
              ]
            },
            {
              "no": "3",
              "question": "Berikut ini tag untuk membuat heading, kecuali...",
              "options": [
                "h2",
                "h4",
                "h7",
                "h5",
              ]
            }
          ]
        },
        {
          "category": "Bab 7",
          "title": "Struktur CSS",
          "video": "assets/video/video7.mp4",
          "materi":
              "https://firebasestorage.googleapis.com/v0/b/cresign-5e877.appspot.com/o/pdf%2FBAB_7.pdf?alt=media&token=e33eec43-15b2-4a99-b3b3-42b0c5946bc9",
          "deskripsi":
              "CSS Preprocessor adalah sebuah ekstensi css yang menyediakan fitur – fitur seperti variabel, operasi aritmatika, perulangan dan fungsi yang sebelumnya tidak ada pada CSS. Cara membuatnya yaitu, kita membuat syntak style pada file berekstensi lain, lalu dikonversi oleh preprocessornya dan menerjemahkannya ke css yang bisa digunakan dan dirender oleh web browser. Dengan CSS Preprocessor, menjadikan kode CSS yang dibuat lebih mudah untuk dikustomisasi, dimaintain serta menjadikan penulisan style css lebih sederhana ",
          "questions": [
            {
              "no": "1",
              "question": "3 struktur dasar CSS terdiri dari :",
              "options": [
                "Elemen, Tag, Attribut",
                "Web Browser, Teks Editor, Web Server",
                "Blockquote, Addres, Kuotasi",
                "Selector, Property, Value",
              ]
            },
            {
              "no": "2",
              "question": " Extend atau Inheritance digunakan untuk ...",
              "options": [
                "mewariskan style elemen atau properti css pada selector lain",
                "untuk menghindari penulisan properti secara berulang",
                "untuk membuat CSS Combinators",
                "untuk menyimpan warna, jenis font, atau berbagai macam nilai css apapun",
              ]
            },
            {
              "no": "3",
              "question":
                  "SASS menyediakan mekanisme perulangan menggunakan ...",
              "options": [
                "@extend",
                "@import",
                "@for",
                "garis miring bintang (/**/)",
              ]
            }
          ]
        }
      ]
    },
    {
      "bab": [
        {
          "category": "Bab 8",
          "title": "Struktur JS dan Framework JQuery",
          "video": "assets/video/video8.mp4",
          "materi":
              "https://firebasestorage.googleapis.com/v0/b/cresign-5e877.appspot.com/o/pdf%2FBAB_8.pdf?alt=media&token=84f55d80-3f6d-4367-b08f-c725102b1598",
          "deskripsi":
              "Dalam mengembangkan sebuah antarmuka dan interaksi pengguna, akan membutuhkan banyak baris sumber kode yang saling berhubungan dan sering digunakan ulang untuk memudahkan dan mempercepat pengembangan web dalam bentuk pengorganisasian modul-modul dan fungsi javascript siap pakai yang disebut dengan Javascript Framework. Banyak JS Framework Populer seperti AngularJS, ReactJS, Meteor JS dan lainnya, namun pada praktikum ini akan menggunakan Vue.JS dikarenakan kemudahan dan performansinya yang bagus.",
          "questions": [
            {
              "no": "1",
              "question":
                  "Di bawah adalah sintak javascript untuk mengambil elemen HTML secara spesifik pada atribut ID",
              "options": [
                "document.getElementByClassId(“demo”);",
                "document.getElementsByClassName(“demo”);",
                "document.getElementsByTagName(“demo”);",
                "document.getElementById(“demo”);",
              ]
            },
            {
              "no": "2",
              "question": "Bagaimana membuat komentar di javascript",
              "options": [
                "*ini komentar*",
                "<!–ini komentar–>",
                "//ini komentar",
                "/* ini komentar */",
              ]
            },
            {
              "no": "3",
              "question":
                  "Javascript memiliki beberapa tipe data seperti berikut, kecuali ...",
              "options": [
                "List",
                "Numerik",
                "String",
                "Boolean",
              ]
            }
          ]
        }
      ]
    }
  ];
}
