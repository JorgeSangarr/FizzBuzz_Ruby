require 'spec_helper'
require 'fizz_buzz'

describe fizz_buzz do
	output = fizz_buzz()
	it 'prints 1' do
		expect(output[0]).to eq(1)
	end
	
	it 'prints Fizz for multiples of three' do
		expect(output[2]).to eq('Fizz')
	end

	it 'prints Buzz for multiples of five' do
		expect(output[4]).to eq('Buzz')
	end

	it 'prints FizzBuzz for multiples of both three and five' do
		expect(output[14]).to eq('FizzBuzz')
	end
end