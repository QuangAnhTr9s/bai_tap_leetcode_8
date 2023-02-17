// https://leetcode.com/problems/shuffle-string/
void main(){
  String s = "codeleet"; List<int> indices = [4,5,6,7,0,2,1,3];
  print(restoreString(s, indices));
}
String restoreString(String s, List<int> indices) {
    List<String> result = s.split(''); //tạo list result có length = length của s
    for(int i =0; i<s.length; i++){
      //lấy index từ indices, giá trị từ s
      result[indices[i]] = s[i];
    }
    return result.join();
}
