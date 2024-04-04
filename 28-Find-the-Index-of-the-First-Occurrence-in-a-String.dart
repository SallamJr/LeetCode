class Solution {
  int strStr(String haystack, String needle) {
    int haystackLength = haystack.length;
  int needleLength = needle.length;

  // If needle is empty, return 0
  if (needleLength == 0) return 0;

  // If haystack is shorter than needle, no match is possible
  if (haystackLength < needleLength) return -1;

  for (int i = 0; i <= haystackLength - needleLength; i++) {
    // Check if substring starting from index i matches needle
    if (haystack.substring(i, i + needleLength) == needle) {
      return i;
    }
  }

  // No match found
  return -1;  
  }
}