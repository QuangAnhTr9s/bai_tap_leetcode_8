// https://leetcode.com/problems/valid-parentheses/
void main() {
  String s1 = "({[)";
  String s2 = "()";
  String s3 = "([)]";
  print(isValid(s1));
  print(isValid(s2));
  print(isValid(s3));
}

bool isValid(String s) {
  // List<String> listS = s.split(''); //tạo listS từ s
  List<String> listStack = []; //tạo list Stack để chứa các dấu
  // bool isClosed = true; //biến check đã đóng - mở chưa

  for (int i = 0; i < s.length; i++) {

    //check từng dấu
    switch (s[i]) {
    //dấu mở thì add vào stack/
      case '(':
        listStack.add(s[i]);
        break;
      case '{':
        listStack.add(s[i]);
        break;
      case '[':
        listStack.add(s[i]);
        break;

    //dấu đóng thì check đã có dấu mở trong stack chưa (Stack trống)  và có dấu mở cùng loại nào chưa
      case ')':
       if(listStack.isEmpty ){
         return false;
       } else{
         if(listStack.contains('(')){
           listStack.remove(')');
           break;
         } else{
           return false;
         }
       }
      case '}':
        if(listStack.isEmpty ){
          return false;
        } else{
          if(listStack.contains('{')){
            listStack.remove('}');
            break;
          } else{
            return false;
          }
        }
      case ']':
        if(listStack.isEmpty ){
          return false;
        } else{
          if(listStack.contains('[')){
            listStack.remove(']');
            break;
          } else{
            return false;
          }
        }
    }
  }
  //nếu duyệt hết mà Stack ko trống thì là còn thừa dấu ngoặc chưa dùng
  return listStack.isEmpty;



  /*  //check các dấu đóng và mở cùng loại có số lượng bằng nhau
    switch (s[i]) {
      case '(':
        ngoacTronMo++;
        break;
      case ')':
        ngoacTronDong++;
        break;
      case '{':
        ngoacNhonMo++;
        break;
      case '}':
        ngoacNhonDong++;
        break;
      case '[':
        ngoacVuongMo++;
        break;
      case ']':
        ngoacVuongDong++;
    }


    //Check điều kiện: dấu ngoặc mở phải được đóng theo đúng thứ tự.
    if (listS[i] == '}' || listS[i] == ')' || listS[i] == ']'){
      if(isClosed == true){
        //nếu phần tử là dấu đóng mà chưa có dấu mở nào hoặc đã mở và đc đóng rồi (isClosed == true) thì false
        return false;
      } else {
        if(listS[i] == '}' && listStack.first == '{' || listS[i] == ')' && listStack.first == '('
            || listS[i] == ']' && listStack.first == '['){
          //nếu phần tử là dấu đóng và đã có dấu mở cùng loại từ trước thì xóa sạch listStack, isClosed = true và xét tiếp phần tử tiếp theo
          listStack.clear();
          isClosed = true;
        }else{
          listStack.add(listS[i]);
        }
      }
    }else{
      //nếu phần tử là dấu mở thì add vào Stack
      listStack.add(listS[i]);
      isClosed = false;
    }*/
 /* //phải thõa mãn 2 điều kiện trên
  return listStack.isEmpty && ngoacNhonMo == ngoacNhonDong && ngoacVuongMo == ngoacVuongDong && ngoacTronMo == ngoacTronDong;
*/
}


