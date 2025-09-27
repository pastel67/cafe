void main() {
  var customer1 = Counter(['아이스 아메리카노','카페모카 아이스'], true);
  customer1.order();

}

Map<String, int> menu = {
  '아메리카노': 3000,
  '카페라떼': 4500,
  '카페모카': 4800,
  '카라멜라떼': 5000,
  '바닐라라떼': 5000,
  '돌체라떼' : 4500,
  '아이스' : 500
};

class Counter {
  List<String> selectMenu = [];
  bool takeOut;

  Counter(this.selectMenu, this.takeOut);
 
  List<String> ice = [];
  List<String> beverage = [];
    
  void order(){
    for(int i =0; i < selectMenu.length; i++){
      if(selectMenu[i].contains('아이스 ') == true ||
        selectMenu[i].contains(' 아이스') == true){
        ice.add('아이스');
      }
      beverage.add(selectMenu[i].replaceAll('아이스', ' ').trim());
    }
  sumPrice();
  }
  
  int totalPrice = 0;
  
  void sumPrice(){
    for(int i = 0; i < ice.length; i++){
      totalPrice += menu[ice[i]]?? 0;
    }
    for(int i = 0; i < beverage.length; i++){
      totalPrice += menu[beverage[i]]?? 0;
    }
  noti();
  }

  void noti(){ 
    if (takeOut == true) {
      print('$selectMenu 주문받았습니다.\n$totalPrice원입니다.\n일회용컵으로 준비해드릴게요.');
    } else if (takeOut == false) {
      print('$selectMenu 주문받았습니다.\n$totalPrice원입니다.\n매장컵으로 준비해드릴게요.');
    } else {
      print('$selectMenu 주문받았습니다. 드시고 가시나요?');
    }
  }
}
