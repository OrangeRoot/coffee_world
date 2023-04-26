import '../models/coffee.dart';
import '../models/image_correction_data.dart';

const coffeeData = [
  Coffee(
      name: 'Caramel Macchiato',
      img: 'assets/images/caramel_macchiato.png',
      description:
          'A popular Starbucks drink, the caramel macchiato is made with steamed milk and vanilla syrup, topped with a shot of espresso and drizzled with caramel sauce. It\'s a sweet and creamy coffee with a strong espresso kick.'),
  Coffee(
      name: 'Cappuccino',
      img: 'assets/images/cappuccino.png',
      description:
          'A classic Italian coffee, the cappuccino is made with equal parts espresso, steamed milk, and foam. The espresso provides a strong, bold flavor, while the milk and foam create a smooth, creamy texture. It\'s a great choice for those who want a balance between strong coffee and creamy milk.'),
  Coffee(
      name: 'Americano',
      img: 'assets/images/americano.png',
      description:
          'Made by adding hot water to a shot of espresso, the Americano has a milder flavor than straight espresso. It\'s a popular choice for those who want a simple coffee without any added milk or sugar'),
  Coffee(
      name: 'Macchiato',
      img: 'assets/images/macchiato.png',
      description:
          'A shot of espresso with a small amount of milk, usually served in a small cup. The milk is "stained" or "marked" with the espresso, giving it a slightly sweet and bold flavor. It\'s perfect for those who want a quick, strong coffee with a touch of milk.'),
  Coffee(
      name: 'Mocha',
      img: 'assets/images/mocha.png',
      description:
          'A chocolatey twist on a latte, the mocha is made with a shot of espresso, steamed milk, and chocolate syrup. It\'s a sweet and creamy coffee with a bold espresso kick and a touch of chocolatey goodness.'),
  Coffee(
      name: 'Espresso',
      img: 'assets/images/espresso.png',
      description:
          'A concentrated shot of coffee made by forcing hot water through finely ground coffee beans, espresso is the base for many coffee drinks. It has a strong and bold flavor that\'s perfect for those who want a quick, strong coffee.'),
  Coffee(
      name: 'Flat White',
      img: 'assets/images/flat_white.png',
      description:
          'Originally from Australia and New Zealand, the flat white is made with a double shot of espresso and steamed milk, creating a velvety texture. It has a strong espresso flavor with a slightly sweet and creamy taste.'),
  Coffee(
      name: 'Con Panna',
      img: 'assets/images/con_panna.png',
      description:
          'Similar to a macchiato, the con panna is a shot of espresso topped with a dollop of whipped cream. It\'s a simple yet decadent coffee that\'s perfect for those who want a little something extra with their espresso.'),
];

const imgCor = [
  ImageCorrectionData(right: -20.0, height: 180.0, bottom: 290.0),
  ImageCorrectionData(right: -15.0, height: 180.0, bottom: 280.0),
  ImageCorrectionData(right: 20.0, height: 220.0, bottom: 290.0),
  ImageCorrectionData(right: 20.0, height: 210.0, bottom: 280.0),
  ImageCorrectionData(right: 15.0, height: 190.0, bottom: 300.0),
  ImageCorrectionData(right: 5.0, height: 220.0, bottom: 280.0),
  ImageCorrectionData(right: 20.0, height: 150.0, bottom: 300.0),
  ImageCorrectionData(right: 0.0, height: 180.0, bottom: 280.0),
];
