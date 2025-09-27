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
  var customer1 = counterStaff('아메리카노', true, true);
  customer1.Order();
}

class Counter{
  String beverage = '';
  bool ice;
  bool takeOut;

  Counter(this.beverage, this.ice, this.takeOut);

}


class counterStaff extends Counter{

  String takeOrder = '';
  int totalPrice = 0;

  counterStaff(super.beverage, super.ice, super.takeOut);

  @override
  void Order() {

    if (ice == true) {
     takeOrder += '아이스 ';
    }
  takeOrder += beverage;
  totalPrice += menu[beverage]?? 0;

  noti();
  }

  @override
  void noti(){ 
    if (takeOut == true) {
      print('$takeOrder 주문받았습니다.\n$totalPrice원입니다.\n일회용컵으로 준비해드릴게요.');
    } else if (takeOut == false) {
      print('$takeOrder 주문받았습니다.\n$totalPrice원입니다.\n매장컵으로 준비해드릴게요.');
    } else {
      print('$takeOrder 주문받았습니다. 드시고 가시나요?');
    }
  }
}
