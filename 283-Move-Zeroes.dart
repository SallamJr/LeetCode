class Solution {
  void moveZeroes(List<int> nums) {
    int nonZeroIndex = 0;

  // Move non-zero elements to the front of the array
  for (int i = 0; i < nums.length; i++) {
    if (nums[i] != 0) {
      nums[nonZeroIndex] = nums[i];
      nonZeroIndex++;
    }
  }

  // Fill the remaining positions with zeros
  for (int i = nonZeroIndex; i < nums.length; i++) {
    nums[i] = 0;
  }   
  }
}