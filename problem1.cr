# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.

def calculate(multiple1, multiple2, limit)
	counter = 1
	sum = 0
	while counter < limit
		if((counter % multiple1) == 0 || (counter % multiple2) == 0)
			sum = sum + counter 
		end
		counter += 1
	end
	
	return sum
end


print "Sum: #{calculate(3, 5, 10)}"
print "\n\nSum: #{calculate(3, 5, 1000)}"