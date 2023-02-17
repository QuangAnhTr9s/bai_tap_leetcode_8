// https://leetcode.com/problems/plus-one/description/
// cộng thêm 1
void main() {
  List<int> digits = [9, 9, 9];
  print(plusOne(digits));
}

List<int> plusOne(List<int> digits) {
  for (int i = digits.length - 1; i >= 0; i--) {
    //check từng phần tử
    //nếu phần tử khác 9 thì chỉ cần +1 và kết thúc vòng lặp vì không có nhớ
   if(digits[i] != 9){
     digits[i]++;
     break;
   }else{
     // nếu phần tử = 9 thì gán phần tử = 0 và tiếp tục vòng lặp bởi vì còn nhớ 1
     digits[i] = 0;
     // trường hợp số đầu tiên là 9 (9xxx) thì thêm con 1 lên trước (10xxx)
     if(i == 0){
       digits.insert(0, 1);
     }
   }
  }
  return digits;
}
