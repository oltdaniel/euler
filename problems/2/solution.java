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
class Solution {
  private static int MAX_NUM = 4000000;
  private static double GOLDEN_RATIO = (1 + Math.sqrt(5)) / 2;
  private static double PSI = (1 - Math.sqrt(5)) / 2;

  public static void main(String[] args) {
    long possibleFibanocciUnderLimit = numOfFibanocciUnderLimit(MAX_NUM);
    long sum = (nthFibonacci(3 * Math.round(possibleFibanocciUnderLimit / 3) + 2L) - 1L) / 2L;
    System.out.println("Solution: " + sum);
  }

  private static long nthFibonacci(long n) {
    return (long)((double)(Math.pow(GOLDEN_RATIO, n) - (double)Math.pow(PSI, n)) / (double)Math.sqrt(5));
  }

  private static long numOfFibanocciUnderLimit(long n) {
    return (long)((double)Math.log(Math.sqrt(5) * n) / (double)Math.log((1 + Math.sqrt(5)) / 2));
  }
}
