import 'dart:io';

void main() {
   Counter customer1 = Counter(['아이스 아메리카노'], true);
  customer1.order();
}

class Counter {
  Map<String, int> menu = {
    '아이스': 500,
    '아메리카노': 3000,
    '카페라떼': 4500,
    '카페모카': 4800,
    '카라멜라떼': 5000,
    '바닐라라떼': 5000,
    '돌체라떼': 4500,
    '블루베리스무디': 6000,
    '딸기스무디': 6000,
    '요거트스무디': 5500,
  };

  List<String> selectMenu = [];
  bool takeOut;

  Counter(this.selectMenu, this.takeOut);

  List<String> ice = [];
  List<String> beverage = [];

  void order() {
    for (int i = 0; i < selectMenu.length; i++) {
      if (selectMenu[i].contains('아이스 ') || selectMenu[i].contains(' 아이스')) {
        ice.add('아이스');
      }
        try{
          menu.containsKey(selectMenu[i].replaceAll('아이스', ' ').trim());
          
        }catch(e){
          print('${selectMenu[i]}은(는) 없는 메뉴입니다. 다시 선택해주세요.');
        } 

      
      
    beverage.add(selectMenu[i].replaceAll('아이스', ' ').trim());
    }
    sumPrice();
  }

  int totalPrice = 0;

  void sumPrice() {
    for (int i = 0; i < ice.length; i++) {
      totalPrice += menu[ice[i]] ?? 0;
    }
    for (int i = 0; i < beverage.length; i++) {
      totalPrice += menu[beverage[i]] ?? 0;
    }
    noti();
  }

  void noti() {
    takeOut
        ? print('$selectMenu 주문받았습니다.\n$totalPrice원입니다.\n일회용컵으로 준비해드릴게요.')
        : print('$selectMenu 주문받았습니다.\n$totalPrice원입니다.\n매장컵으로 준비해드릴게요.');
  }
}
