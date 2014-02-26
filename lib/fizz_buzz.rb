def fizz_buzz()
	output = []
	100.times do |index|
		number = index + 1
		if number % 15 == 0
			output << 'FizzBuzz'
		elsif number % 3 == 0
			output << 'Fizz'
		elsif number % 5 == 0
			output << 'Buzz'
		else
			output << number
		end
	end
	puts output
	output
end