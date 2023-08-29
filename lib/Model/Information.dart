class Information {
  String name;
  String country;
  String continent;
  String image;
  String discription;
  String temp;
  String rating;
  String distance;
  String price;

  Information(
      {required this.name,
      required this.country,
      required this.continent,
      required this.image,
      required this.discription,
      required this.temp,
      required this.rating,
      required this.distance,
      required this.price});
}

List<Information> safarList = [
  Information(
      name: 'La Selva',
      country: 'Peru',
      continent: 'South America',
      image: 'assets/image/Nature1.jpg',
      discription:
          'Peru: South America\'s third-largest country Peru is one of the world\'s most varied countries. It is a multicultural nation, filled with traditions, a unique gastronomy and vast natural reserves. It is home to 12 UNESCO World Heritage Sites and 84 of the planet\'s 117 life zones. country Peru is one of the world\'s most varied countries. It is a multicultural nation, filled with traditions, a unique gastronomy and vast natural reserves. It is home to 12 UNESCO World Heritage Sites and 84 of the planet\'s 117 life zones',
      temp: '34',
      rating: '4.3',
      distance: '2270',
      price: '14500'),
  Information(
      name: 'Gilan',
      country: 'Iran',
      continent: 'Asia',
      image: 'assets/image/Nature2.jpg',
      discription:
          'Gilan province is located between Alborz Mountains, Talesh Mountains, Caspian Sea and is a green landscape with may rivers, forests and wetlands. Gilan has a high population density as a result of its temperate weather and fertile soil. It’s surrounded by the Caspian sea and Azarbaijan Republic to the north, Zanjan & Qazvin to the south, Mazandaran to the east and Ardebil to the west.',
      temp: '25',
      rating: '5',
      distance: '220',
      price: '1000'),
  Information(
      name: 'Reykjavik',
      country: 'Icelandic',
      continent: 'Europe',
      image: 'assets/image/Nature3.jpg',
      discription:
          'Iceland is a small island nation that is Europe\'s westernmost country and home to the world\'s northernmost capital, Reykjavik. Eleven percent of the country is covered in glacial ice and is surrounded by water. If global warming continues, rising water levels and melting ice could be devastating to Iceland.',
      temp: '-8',
      rating: '3.5',
      distance: '1150',
      price: '10300'),
  Information(
      name: 'Vienna',
      country: 'Austria',
      continent: 'Europe',
      image: 'assets/image/Nature4.jpg',
      discription:
          'the area that is now Khūzestān was settled about 6000 bce by a people with affinities to the Sumerians, who came from the Zagros Mountains region. Urban centres appeared there nearly contemporaneously with the first cities in Mesopotamia in the 4th millennium.',
      temp: '3',
      rating: '4.9',
      distance: '450',
      price: '800'),
  Information(
      name: 'Shiraz',
      country: 'Iran',
      continent: 'Asia',
      image: 'assets/image/Nature5.jpg',
      discription:
          'Shiraz is one of the top tourist cities in Iran and it is known as the city of poets, literature, and flowers. It is also considered by many Iranians to be the city of gardens due to the presence of many gardens and fruit trees that can be seen throughout the city, such as Eram Garden. Shiraz is one of the top tourist cities in Iran and it is known as the city of poets, literature, and flowers. It is also considered by many Iranians to be the city of gardens due to the presence of many gardens and fruit trees that can be seen throughout the city, such as Eram Garden',
      temp: '38',
      rating: '4.9',
      distance: '100',
      price: '2300')
];
