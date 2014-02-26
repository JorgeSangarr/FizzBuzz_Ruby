def reverse(output)
	output.each_with_index do |number, index|
		if output[index].is_a?(String) && number % 2 == 0
			output[index] = output[index].reverse
		end
		if output[index].is_a?(Integer) && number % 2 == 1
			output[index] = output[index].to_s.reverse.to_i
		end
	end
	output
end

def replace(output, replace_rules)
	output.each do |number|
		index = number - 1	
		for i in 0...replace_rules.length do
			if number % replace_rules[i][0] == 0
				output[index] = replace_rules[i][1]
			end
		end
	end
	output
end

def fizz_buzz(start_number, end_number, replace_rules)
	output = (start_number..end_number).to_a
	output = replace(output, replace_rules)
	reverse(output)
end