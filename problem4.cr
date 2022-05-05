# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
# Find the largest palindrome made from the product of two 3-digit numbers.

def calculate_prime_factors(number : Int)
  i = 2
  limit = (number / 2).round.to_i64 # Same number is not valid as prime.
  prime_factors = [] of Int64
  while(i < limit)
    if((number % i) == 0)
      prime_factors << i # if is_prime(i)
    end
    i += 1
  end
  return prime_factors
end

def is_prime(number : Int)
  digits = number.digits
  digits = digits[digits.size - 1]
  if(number.digits.size > 1)
    return false if(number == 0 || number == 2 || number == 4 || number == 5 || number == 6 || number == 8)
    return false if((number.digits.sum % 3) == 0)
  end

  i = 2
  while(i < number)
    return false if(number % i == 0)
    i += 1
  end
  return true
end

def calculate_palindromes
  lower_limit = 100
  higher_limit = 999
  biggest_palindrome = 0
  counter1 = higher_limit
  
  
  while(counter1 >= lower_limit)
    counter2 = higher_limit
    while(counter2 >= lower_limit)
      result = counter1*counter2
      if(result.to_s == result.to_s.reverse)
        biggest_palindrome = result if result > biggest_palindrome
      end
      # return "Values are #{counter1} and #{counter2}" if(result.to_s == result.to_s.reverse)
      counter2 -= 1
    end
    counter1 -= 1
  end
  
  return biggest_palindrome
end


# number = 9009
# print "Prime factors of #{number}: #{calculate_prime_factors(number)}"

print "Palindromes of 3 digits: #{calculate_palindromes}"