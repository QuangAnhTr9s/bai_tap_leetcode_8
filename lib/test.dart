void main(){
 String s = "codeleet"; List<int> indices = [4,5,6,7,0,2,1,3];
 Map<String, int> mapData = {};
 for(int i = 0; i<s.length; i++){
  mapData[s[i]] = indices[i];
 }
 print(mapData);
}