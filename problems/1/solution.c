// MIT License
//
// Copyright (c) 2018 Daniel Oltmanns
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.

/**
* Solving Project Euler Problem 1: Multiples of 3 and 5
* URL: https://projecteuler.net/problem=1
*/

#include <stdio.h>

#define BELOW_OF 1000

int sumMultiplesBelow(int n, int d) {
  int possibleMultiples = (n - 1) / d;
  return d * possibleMultiples * (possibleMultiples + 1) / 2;
}

int main() {
  int sum = sumMultiplesBelow(BELOW_OF, 3);
  sum += sumMultiplesBelow(BELOW_OF, 5);
  sum -= sumMultiplesBelow(BELOW_OF, 15);

  printf("Solution: %d\n", sum);

  return 0;
}
