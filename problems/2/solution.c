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
* Solving Project Euler Problem 2: Even Fibonacci numbers
* URL: https://projecteuler.net/problem=2
*/

#include <stdio.h>
#include <math.h>

#define MAX_NUM 4000000

unsigned long long nthFibonacci(long double goldenRatio, long double psi, unsigned long n) {
  return llroundl((powl(goldenRatio, n) - powl(psi, n)) / sqrtl(5));
}

unsigned long numOfFibanocciUnderLimit(unsigned long n) {
  return llround(logl(sqrtl(5) * n) / logl((1 + sqrtl(5)) / 2));
}

int main() {
  long double goldenRatio = (1 + sqrt(5)) / 2;
  long double psi = (1 - sqrt(5)) / 2;

  unsigned long possibleFibanocciUnderLimit = numOfFibanocciUnderLimit(MAX_NUM);

  unsigned long long sum = (nthFibonacci(goldenRatio, psi, 3 * (possibleFibanocciUnderLimit / 3) + 2) - 1) / 2;

  printf("Solution: %llu\n", sum);


  return 0;
}
