# MIT License
#
# Copyright (c) 2018 Daniel Oltmanns
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

# Solving Project Euler Problem 2: Even Fibonacci numbers
# URL: https://projecteuler.net/problem=2

MAX_NUM = 4_000_000
GOLDEN_RATIO = (1.00 + Math.sqrt(5)) / 2.00
PSI = (1.00 - Math.sqrt(5))  / 2.00

def nth_fibonacci(n)
  return ((GOLDEN_RATIO**n.to_f - PSI**n.to_f) / Math.sqrt(5)).to_i
end

def num_of_fibonacci_below(n)
  return Math.log(Math.sqrt(5) * n.to_f) / Math.log((1.00 + Math.sqrt(5)) / 2.00);
end

possible_fibonacci_below = num_of_fibonacci_below(MAX_NUM)
sum = (nth_fibonacci(3 * (possible_fibonacci_below.to_i / 3) + 2) - 1) / 2

puts "Solution: #{sum}"
