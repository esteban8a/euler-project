# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?

def calculate_largest_prime_factor(number : Int)
	# i = number
	i = (number / 2).round.to_i64 # Same number is not valid as prime.
	primes_cache = [] of Int64
	while(i > 0)
		if((number % i) == 0)
			results = is_prime(primes_cache, i)
			return i if(results[0] == true)
		end
		i -= 1
	end
	return 1
end

def is_prime(prime_cache : Array, number : Int)
	digits = number.digits
	digits = digits[digits.size - 1]
	return [false, prime_cache] if(number == 0 || number == 2 || number == 4 || number == 5 || number == 6 || number == 8)
	return [false, prime_cache] if((number.digits.sum % 3) == 0)

	i = 2
	while(i < number)
		return [false, prime_cache] if(number % i == 0)
		i += 1
	end
	prime_cache << i
	return [true, prime_cache]
end

# number = 13195
# number = 30
number = 600_851_475_143
print "Calculating largest prime factor......\n"
factor = calculate_largest_prime_factor(number)
print "Largest prime factor of #{number} is #{factor}\n"