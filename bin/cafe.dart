void main() {
  var customer1 = PosStaff('아메리카노', true, true);
  customer1.Order();
}

List<String> menu = [
  '아메리카노',
  '카페라떼',
  '카페모카',
  '카라멜라떼',
  '바닐라라떼',
  '딸기스무디',
  '블루베리스무디',
  '플레인스무디',
];

class PosStaff {
  String beverage = '';
  bool ice;
  bool takeOut;

  PosStaff(this.beverage, this.ice, this.takeOut);

  void Order() {
    String takeOrder = '';

    if (ice == true) {
      takeOrder += '아이스';
    }

    takeOrder += beverage;

    if (takeOut == true) {
      print('$takeOrder 주문받았습니다. 일회용컵에 준비해드릴게요.');
    } else if (takeOut == false) {
      print('$takeOrder 주문받았습니다. 매장컵으로 준비해드릴게요.');
    } else {
      print('$takeOrder 주문받았습니다. 드시고 가시나요?');
    }
  }
}
