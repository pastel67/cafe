void main() {}

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

  void takeOrder() {
    String order = '';

    if (ice == true) {
      order += '아이스';
    }

    order += beverage;

    if (takeOut == true) {
      print('$order 주문받았습니다. 일회용컵에 준비해드릴게요.');
    } else if (takeOut == false) {
      print('$order 주문받았습니다. 매장컵으로 준비해드릴게요.');
    } else {
      print('$order 주문받았습니다. 드시고 가시나요?');
    }
  }
}
