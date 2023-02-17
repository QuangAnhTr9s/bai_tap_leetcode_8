// https://leetcode.com/problems/count-items-matching-a-rule/
void main(){
  List<List<String>> items = [["phone","blue","pixel"],["computer","silver","lenovo"],["phone","gold","iphone"]];
      String ruleKey = "color", ruleValue = "silver";
      print(countMatches(items, ruleKey, ruleValue));
}
int countMatches(List<List<String>> items, String ruleKey, String ruleValue) {
    int count = 0;
    for (var element in items) {
      //check từng item trong list items
      //check ruleKey và ruleValue theo từng item, đúng 2 yếu tố thì tăng biến count lên
      if(ruleKey == "type") {
        if (element[0] == ruleValue) count++;
      }
      if(ruleKey == "color"){
        if(element[1] == ruleValue) count++;
      }
      if(ruleKey == "name"){
        if(element[2] == ruleValue) count++;
      }
    }
    return count;
}
