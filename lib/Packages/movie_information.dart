class movie_information {
  String title;
  String synopsis;
  String genre;
  String duration;
  String rating;
  String imageAsset;

  movie_information(
      {required this.title,
      required this.synopsis,
      required this.genre,
      required this.duration,
      required this.rating,
      required this.imageAsset});
}

var mostWatched_movies = [
  movie_information(
      title: "Baby Driver",
      synopsis:
          "Doc memaksa Baby, pengemudi ahli-sewaan, untuk bergabung dalam aksi pencurian dan mengancam akan menyakiti pacarnya jika menolak. Tapi rencananya kacau - salah satu tim mereka ternyata adalah polisi.",
      genre: 'Cerita',
      duration: '1h 55m',
      rating: '8.9/10',
      imageAsset: 'images/most_watched/baby-driver.jpg'),
  movie_information(
      title: "Man of Steel",
      synopsis:
          'Dipaksa untuk menghadapi rahasia tentang asal-usul galaxi nya, Superman kini belajar untuk membela planet bumi, ketika diserang oleh makhluk-makhluk asing yang berasal dari bangsanya sendiri.',
      genre: 'Laga',
      duration: '2h 23m',
      rating: '8/10',
      imageAsset: 'images/most_watched/man-of-steel.jpg'),
  movie_information(
      title: "Shazam!",
      synopsis:
          'illy Batson, seorang anak yatim berusia 14 tahun yang bermasalah yang tinggal di Philadelphia, diatur untuk pindah ke rumah asuh baru - yang ketujuh berturut-turut - dengan keluarga Vazquez dan lima anak asuh lainnya. Suatu hari, Billy naik mobil subway dan menemukan dirinya diangkut ke dunia yang berbeda di mana penyihir kuno memberinya kekuatan.',
      genre: 'Laga',
      duration: '2h 12m',
      rating: '7.6/10',
      imageAsset: 'images/most_watched/shazam.jpg'),
  movie_information(
      title: "X-Men: Dark Phoenix",
      synopsis:
          'Film X Men Dark Pheonix ini meneceritakan asl usul Jean Grey, wanita mutan terkuat yang mampu menggerakan semua benda. Tentang bagaimana Jean Gray mulai mengembangkan kekuatan luar biasa yang merusak dan mengubahnya menjadi Dark Phoenix. Sekarang X-Men harus memutuskan apakah kehidupan anggota tim lebih berharga daripada semua orang yang hidup di dunia.',
      genre: 'Laga',
      duration: '1h 54m',
      rating: '7.2/10',
      imageAsset: 'images/most_watched/x-men.jpg'),
];

var popular_movies = [
  movie_information(
      title: "Jungle Cruise",
      synopsis:
          "Frank (Dwayne Johnson) adalah kapten kapal yang berkharisma. Ia bertemu dengan Lily (Emily Blunt), seorang penjelajah yang berambisi menemukan kebenaran mengenai pohon ajaib yang memiliki kekuatan penyembuh.",
      genre: 'Petualangan',
      duration: '2h 7m',
      rating: '7.7/10',
      imageAsset: 'images/popular/jungle-cruise.jpg'),
  movie_information(
      title: "Fast & Furious 9",
      synopsis:
          "Dom Toretto (Vin Diesel) menjalani kehidupan yang tenang dengan Letty dan putranya, Brian kecil, tetapi mereka tahu bahwa bahaya selalu mengintai. Kali ini, ancaman itu akan memaksa Dom untuk menghadapi kesalahan dari masa lalunya jika dia ingin menyelamatkan orang yang paling dia cintai. Krunya bergabung bersama untuk menghentikan sesuatu yang dapat menghancurkan dunia. serangan dipimpin oleh pembunuh paling terampil dan pengemudi yang sangat handal dan juga merupakan saudara laki-laki Dom yang ditinggalkan, Jakob (John Cena)",
      genre: 'Aksi',
      duration: '2h 25m',
      rating: '8.3/10',
      imageAsset: 'images/popular/ff9.jpg'),
  movie_information(
      title: "Red Notice",
      synopsis:
          'John Hartley (Dwayne Johnson) berusaha dengan segala cara untuk menangkap pencuri barang-barang seni bernama Sarah Black (Gal Gadot). Suatu ketika, ia menyamar agar bisa menjebak Sarah. Alih-alih, misi yang dijalankan Hartley itu gagal total.',
      genre: 'Komedi',
      duration: '1h 57m',
      rating: '8.7/10',
      imageAsset: 'images/popular/red-notice.jpg'),
  movie_information(
      title: "Eternals",
      synopsis:
          "Marvel Studios’ “Eternals” menghadirkan kisah sekelompok pahlawan dari luar angkasa yang telah melindungi Bumi sejak awal peradaban manusia.",
      genre: 'Fantasi',
      duration: '2h 36m',
      rating: '7.5/10',
      imageAsset: 'images/popular/enternals.jpg'),
  movie_information(
      title: "Aquaman",
      synopsis:
          "Film ini mengungkap asal-usul Arthur Curry, manusia perkasa yang bisa mengendalikan air dan hewan laut. Dari mana ia mendapatkan kekuatannya? Siapa orang tuanya, dan pantaskah dia menjadi seorang raja di 7 samudera?",
      genre: 'Laga',
      duration: '2h 22m',
      rating: '8.3/10',
      imageAsset: 'images/popular/aquaman.jpg'),
];

var fav_movies = [
  movie_information(
      title: "Jungle Cruise",
      synopsis:
          "Frank (Dwayne Johnson) adalah kapten kapal yang berkharisma. Ia bertemu dengan Lily (Emily Blunt), seorang penjelajah yang berambisi menemukan kebenaran mengenai pohon ajaib yang memiliki kekuatan penyembuh.",
      genre: 'Petualangan',
      duration: '2h 7m',
      rating: '7.7/10',
      imageAsset: 'images/popular/jungle-cruise.jpg'),
  movie_information(
      title: "Fast & Furious 9",
      synopsis:
          "Dom Toretto (Vin Diesel) menjalani kehidupan yang tenang dengan Letty dan putranya, Brian kecil, tetapi mereka tahu bahwa bahaya selalu mengintai. Kali ini, ancaman itu akan memaksa Dom untuk menghadapi kesalahan dari masa lalunya jika dia ingin menyelamatkan orang yang paling dia cintai. Krunya bergabung bersama untuk menghentikan sesuatu yang dapat menghancurkan dunia. serangan dipimpin oleh pembunuh paling terampil dan pengemudi yang sangat handal dan juga merupakan saudara laki-laki Dom yang ditinggalkan, Jakob (John Cena)",
      genre: 'Aksi',
      duration: '2h 25m',
      rating: '8.3/10',
      imageAsset: 'images/popular/ff9.jpg'),
  movie_information(
      title: "Red Notice",
      synopsis:
          'John Hartley (Dwayne Johnson) berusaha dengan segala cara untuk menangkap pencuri barang-barang seni bernama Sarah Black (Gal Gadot). Suatu ketika, ia menyamar agar bisa menjebak Sarah. Alih-alih, misi yang dijalankan Hartley itu gagal total.',
      genre: 'Komedi',
      duration: '1h 57m',
      rating: '8.7/10',
      imageAsset: 'images/popular/red-notice.jpg'),
  movie_information(
      title: "Eternals",
      synopsis:
          "Marvel Studios’ “Eternals” menghadirkan kisah sekelompok pahlawan dari luar angkasa yang telah melindungi Bumi sejak awal peradaban manusia.",
      genre: 'Fantasi',
      duration: '2h 36m',
      rating: '7.5/10',
      imageAsset: 'images/popular/enternals.jpg'),
  movie_information(
      title: "Aquaman",
      synopsis:
          "Film ini mengungkap asal-usul Arthur Curry, manusia perkasa yang bisa mengendalikan air dan hewan laut. Dari mana ia mendapatkan kekuatannya? Siapa orang tuanya, dan pantaskah dia menjadi seorang raja di 7 samudera?",
      genre: 'Laga',
      duration: '2h 22m',
      rating: '8.3/10',
      imageAsset: 'images/popular/aquaman.jpg'),
  movie_information(
      title: "Baby Driver",
      synopsis:
          "Doc memaksa Baby, pengemudi ahli-sewaan, untuk bergabung dalam aksi pencurian dan mengancam akan menyakiti pacarnya jika menolak. Tapi rencananya kacau - salah satu tim mereka ternyata adalah polisi.",
      genre: 'Cerita',
      duration: '1h 55m',
      rating: '8.9/10',
      imageAsset: 'images/most_watched/baby-driver.jpg'),
  movie_information(
      title: "Man of Steel",
      synopsis:
          'Dipaksa untuk menghadapi rahasia tentang asal-usul galaxi nya, Superman kini belajar untuk membela planet bumi, ketika diserang oleh makhluk-makhluk asing yang berasal dari bangsanya sendiri.',
      genre: 'Laga',
      duration: '2h 23m',
      rating: '8/10',
      imageAsset: 'images/most_watched/man-of-steel.jpg'),
  movie_information(
      title: "Shazam!",
      synopsis:
          'illy Batson, seorang anak yatim berusia 14 tahun yang bermasalah yang tinggal di Philadelphia, diatur untuk pindah ke rumah asuh baru - yang ketujuh berturut-turut - dengan keluarga Vazquez dan lima anak asuh lainnya. Suatu hari, Billy naik mobil subway dan menemukan dirinya diangkut ke dunia yang berbeda di mana penyihir kuno memberinya kekuatan.',
      genre: 'Laga',
      duration: '2h 12m',
      rating: '7.6/10',
      imageAsset: 'images/most_watched/shazam.jpg'),
  movie_information(
      title: "X-Men: Dark Phoenix",
      synopsis:
          'Film X Men Dark Pheonix ini meneceritakan asl usul Jean Grey, wanita mutan terkuat yang mampu menggerakan semua benda. Tentang bagaimana Jean Gray mulai mengembangkan kekuatan luar biasa yang merusak dan mengubahnya menjadi Dark Phoenix. Sekarang X-Men harus memutuskan apakah kehidupan anggota tim lebih berharga daripada semua orang yang hidup di dunia.',
      genre: 'Laga',
      duration: '1h 54m',
      rating: '7.2/10',
      imageAsset: 'images/most_watched/x-men.jpg'),
];
