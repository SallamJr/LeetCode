class Solution {
  double myPow(double x, int n) {
     if (n == 0) return 1; // Base case: x^0 = 1
  if (n == 1) return x; // Base case: x^1 = x

  double result = 1;
  bool isNegative = n < 0;
  n = isNegative ? -n : n; // Convert negative exponent to positive

  while (n > 0) {
    // If n is odd, multiply result by x
    if (n % 2 == 1) {
      result *= x;
    }
    // Reduce the exponent by half and square x
    x *= x;
    n ~/= 2;
  }

  return isNegative ? 1 / result : result; 
  }
}