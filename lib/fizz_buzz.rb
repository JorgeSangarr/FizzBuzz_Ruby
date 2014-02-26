def fizz_buzz
	output = []
	100.times do |index|
		number = index + 1
		if number % 13 == 0
			output << 'meeek'
		elsif number % 15 == 0
			output << 'FizzBuzz'
		elsif number % 3 == 0
			output << 'Fizz'
		elsif number % 5 == 0
			output << 'Buzz'
		else
			output << number
		end
		if output[index].is_a?(String) && number.even?
			output[index] = output[index].reverse
		end
		if output[index].is_a?(Integer) && number.odd?
			output[index] = output[index].to_s.reverse.to_i
		end
	end
	output
end