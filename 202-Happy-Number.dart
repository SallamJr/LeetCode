class Solution {
  bool isHappy(int n) {
    Set<int> seen = {}; // to store numbers we've seen before
  while (n != 1) {
    n = sumOfSquareDigits(n); // calculate the sum of squares of digits
    if (seen.contains(n)) {
      return false; // if we encounter a number we've seen before, it's not happy
    }
    seen.add(n);
  }
  return true; // if we reach 1, the number is happy
}

int sumOfSquareDigits(int n) {
  int sum = 0;
  while (n > 0) {
    int digit = n % 10; // extract the last digit
    sum += digit * digit; // square and add it to the sum
    n ~/= 10; // remove the last digit
  }
  return sum;  
  }
}