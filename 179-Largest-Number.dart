class Solution {
  String largestNumber(List<int> nums) {
    List<String> numStrings = nums.map((num) => num.toString()).toList();

  // Custom comparator to sort strings
  numStrings.sort((a, b) => (b + a).compareTo(a + b));

  // If the largest number is 0, return "0" directly
  if (numStrings[0] == "0") return "0";

  // Concatenate sorted strings to form the largest number
  return numStrings.join('');  
  }
}