Map<String, int> menu = {
  '아메리카노': 3000,
  '카페라떼': 4500,
  '카페모카': 4800,
  '카라멜라떼': 5000,
  '바닐라라떼': 5000,
  '딸기스무디': 6000,
  '블루베리스무디': 6000,
  '플레인스무디': 6000,
};

void main() {
  var customer1 = counterStaff(['아메리카노','카페모카'], [true,false], true);
  customer1.Order();
}

class Counter{
  List<String> beverage = [];
  List<bool> ice = [];
  bool takeOut;

  Counter(this.beverage, this.ice, this.takeOut);

}


class counterStaff extends Counter{

  List<String> orders = [];
  int totalPrice = 0;

  counterStaff(super.beverage, super.ice, super.takeOut);

  @override
  void Order() {
    for(int i = 0; i < beverage.length; i++){
      String takeOrder = '';
      if (ice[i] == true) {
       takeOrder += '아이스 ';
      }
      print(beverage[i]);
       if(menu.containsKey(beverage[i]) == false){
        print('다시 주문해 주세요.');
        return;
       }else{
        takeOrder += '${beverage[i]}';
       }
      orders.add(takeOrder);
      totalPrice += menu[beverage[i]]?? 0;
    }

  noti();
  }

  @override
  void noti(){ 
    if (takeOut == true) {
      print('$orders 주문받았습니다.\n$totalPrice원입니다.\n일회용컵으로 준비해드릴게요.');
    } else if (takeOut == false) {
      print('$orders 주문받았습니다.\n$totalPrice원입니다.\n매장컵으로 준비해드릴게요.');
    } else {
      print('$orders 주문받았습니다. 드시고 가시나요?');
    }
  }
}
