void main() {
  var customer1 = Customer(['아이스 아메리카노','카페모카 아이스'], true);
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

class Customer {
  List<String> select = [];
  bool takeOut;
    
  List<String> ice = [];
  List<String> beverage = [];
  
  Customer(this.select, this.takeOut);

  void order(){
    for(int i =0; i < select.length; i++){
        var [a, b] = select[i].split(' ');
          if(a == '아이스'){
            ice.add(a);
            beverage.add(b);
          }else if(b == '아이스'){
            ice.add(b);
            beverage.add(a);
          }
    }
    print(ice);
    print(beverage);
  }
}

class Counter extends Customer{

  int totalPrice = 0;
  
  Counter(super.select, super.takeOut);

}

class CounterStaff extends Counter{
  
  List<String> getOrder = [];

  CounterStaff(super.select,super.takeOut);

  @override
  void noti(){ 
    if (takeOut == true) {
      print('$getOrder 주문받았습니다.\n$totalPrice원입니다.\n일회용컵으로 준비해드릴게요.');
    } else if (takeOut == false) {
      print('$getOrder 주문받았습니다.\n$totalPrice원입니다.\n매장컵으로 준비해드릴게요.');
    } else {
      print('$getOrder 주문받았습니다. 드시고 가시나요?');
    }
  }
}
