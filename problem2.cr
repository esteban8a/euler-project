# Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the # first 10 terms will be:
# 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
# By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.

def calculate_fibonacci(limit : Int)
	fibonacci = [1,2]
	new_item = 1
	while(new_item < limit)
		new_item = fibonacci[fibonacci.size - 1] + fibonacci[fibonacci.size - 2]
		break if new_item >= limit
		fibonacci << new_item
	end
	return fibonacci
end

def add_fibonacci(fibonacci : Array)
	counter = 0
	sum = 0
	puts "Fibonacci: #{fibonacci}"
	while(counter < fibonacci.size)
		value = fibonacci[counter]
		if((value % 2) == 0 )
			puts "Found number: #{value}"
			sum = sum + value 
		end
		counter += 1
	end
	return sum 
end

print "Final number is: #{add_fibonacci(calculate_fibonacci(4_000_000))}"