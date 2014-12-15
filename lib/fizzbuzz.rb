
# implement fizzbuzz without modulo, i.e. the % method
# go from 1 to 100
# (there's no RSpec test for this one)
def fizzbuzz_without_modulo
  (1..100).each { |i| puts fizzbuzz_says(i)}
end

def fizzbuzz_says(number)
  return "Fizzbuzz" if divisible_by_fifteen(number)
  return "Buzz" if divisible_by_five(number)
  return "Fizz" if divisible_by_three(number)
  number
end

def divisible_by_three(number)
  is_divisible_by(number, 3)
end

def divisible_by_five(number)
  is_divisible_by(number, 5)
end

def divisible_by_fifteen(number)
  is_divisible_by(number, 15)
end

def is_divisible_by(number, divisor)
  (number / divisor.to_f) == (number / divisor)
end

fizzbuzz_without_modulo