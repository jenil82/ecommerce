import 'package:flutter/cupertino.dart';
import '../modal/home_modal.dart';

class HomeProvider extends ChangeNotifier {
  List<HomeModal> productList = [
    HomeModal(
      image: "🥝",
      name: "kiwi",
      price: 150,
      quantity: 1,
    ),
    HomeModal(
      image: "🍉",
      name: "watermelon",
      price: 100,
      quantity: 1,
    ),
    HomeModal(
      image: "🍌",
      name: "Banana",
      price: 80,

      quantity: 1,
    ),
    HomeModal(
      image: "🍋",
      name: "lime",
      price: 100,
      quantity: 1,
    ),
    HomeModal(
      image: "🍓🍓",
      name: "Strawberry",
      price: 120,
      quantity: 1,
    ),
    HomeModal(
      image: "🍅",
      name: "Apple",
      price: 90,
      quantity: 1,
    ),
  ];

  List<HomeModal> cartList = [];

  void addtocart(HomeModal datam) {
    cartList.add(datam);
    notifyListeners();
  }

  void updatequantity(HomeModal datam, int index) {
    productList[index] = datam;
    notifyListeners();
  }
}