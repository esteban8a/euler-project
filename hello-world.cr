def variables
	# Variables
	puts "############################"
	puts "VARIABLES"
	message = "Hello World"
	puts "#{message} - Type: #{typeof(message)}"
end

def numbers
	# Numbers
	puts "\n\n############################"
	puts "NUMBERS"
	int_value = 1_000_000
	float_value = 1.0
	puts "Int Value: #{int_value} - Type: #{typeof(int_value)}"
	puts "Float Value: #{float_value} - Type: #{typeof(float_value)}"
end

def math_methods
	puts "\n\n############################"
	puts "MATH METHODS"
	# Math Operations
	p!	1 + 1, # addition
			1 - 1,  # subtraction
			2 * 3,  # multiplication
			2 ** 4, # exponentiation
			2 / 3,  # division
			2 // 3, # floor division
			3 % 2,  # modulus
			-1      # negation (unary)
end

def number_methods
	# Number Methods
	puts "\n\n############################"
	puts "NUMBER METHODS"
	p! 	-5.abs,   # absolute value
			4.3.round, # round to nearest integer
			5.even?,   # odd/even check
			10.gcd(16) # greatest common divisor
end
 
def math_functions
	# Math Methods
	puts "\n\n############################"
	puts "MATH FUNCTIONS"
	p! 	Math.cos(1),     # cosine
			Math.sin(1),      # sine
	# Math Constants
			Math.tan(1),      # tangent
			Math.log(42),     # natural logarithm
			Math.log10(312),  # logarithm to base 10
			Math.log(312, 5), # logarithm to base 5
			Math.sqrt(9)      # square root
end

def math_constants
	puts "\n\n############################"
	puts "MATH CONSTANTS"
	p!	Math::E,  # Euler's number
			Math::TAU, # Full circle constant (2 * PI)
			Math::PI   # Archimedes' constant (TAU / 2)
end

def string_methods
	puts "\n\n############################"
	puts "STRINGS"
	message = "Hello World! Greetings from Crystal."		
	puts "normal: #{message}"
	puts "upcased: #{message.upcase}"
	puts "downcased: #{message.downcase}"
	puts "camelcased: #{message.camelcase}"
	puts "capitalized: #{message.capitalize}"
	puts "reversed: #{message.reverse}"
	puts "titleized: #{message.titleize}"
	puts "underscored: #{message.underscore}"
	puts "Hello 🌐"
end

def method_with_typed_parameters(parameter : String)
	puts "Hello #{parameter}"
end

# variables()
# numbers()
# math_methods()
# number_methods()
# math_functions()
# math_constants()
# string_methods()
# method_with_typed_parameters("test")
puts 2**22
puts 23 % 1