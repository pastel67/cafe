void main() {
  print('메뉴 번호로 주문해주세요.');
  var customer1 = Counter('${menu[9]}', true, true);
  customer1.Order();
}

Map<int, String> menu = {
  1: '아메리카노',
  2: '카페라떼',
  3: '카페모카',
  4: '카라멜라떼',
  5: '바닐라라떼',
  6: '딸기스무디',
  7: '블루베리스무디',
  8: '플레인스무디',
};

class Counter {
  String beverage = '';
  bool ice;
  bool takeOut;

  Counter(this.beverage, this.ice, this.takeOut);

  void Order() {
    String takeOrder = '';

    if (ice == true) {
      takeOrder += '아이스 ';
    }
    if(beverage == 'null'){
      print('다시 주문해 주세요.');
    }else{
      takeOrder += beverage;
    }

    if (takeOut == true) {
      print('$takeOrder 주문받았습니다. 일회용컵으로 준비해드릴게요.');
    } else if (takeOut == false) {
      print('$takeOrder 주문받았습니다. 매장컵으로 준비해드릴게요.');
    } else {
      print('$takeOrder 주문받았습니다. 드시고 가시나요?');
    }
  }
}
