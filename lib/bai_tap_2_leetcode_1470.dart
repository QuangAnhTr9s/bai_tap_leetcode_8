// https://leetcode.com/problems/shuffle-the-array/
void main(){
  List<int> nums = [1,2,3,4,4,3,2,1];
  int n = 4;
  print(shuffle(nums, n));
}
List<int> shuffle(List<int> nums, int n) {
  List<int> result = [];
  //vòng lặp từ 0 đến n-1
    for(int i = 0; i<n; i++){
      //[x1,x2,...,xn,y1,y2,...,yn]
      //lần lượt add x1 rồi y1, x2 rồi y2,...
      result.add(nums[i]);
      result.add(nums[n+i]);
    }
    return result;
}
