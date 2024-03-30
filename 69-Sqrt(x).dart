class Solution {
  int mySqrt(int x) {
     if (x == 0 || x == 1) return x; // Base case: Square root of 0 or 1 is the number itself

  int left = 1;
  int right = x;
  int result = 0;

  while (left <= right) {
    int mid = left + ((right - left) ~/ 2); // Calculate the midpoint

    // Check if mid^2 is less than or equal to x
    if (mid <= x ~/ mid) {
      result = mid; // Update the result to the current midpoint
      left = mid + 1; // Move to the right half of the search space
    } else {
      right = mid - 1; // Move to the left half of the search space
    }
  }

  return result; 
  }
}