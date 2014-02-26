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

	it 'prints meeek for multiples of thirteen' do
		expect(output[12]).to eq('meeek')
	end

	it 'prints the string reversed for even multiples' do
		expect(output[5]).to eq('Fizz'.reverse)
		expect(output[9]).to eq('Buzz'.reverse)
		expect(output[29]).to eq('FizzBuzz'.reverse)
		expect(output[25]).to eq('meeek'.reverse)
	end

	it 'prints the number reversed if it is odd' do
		expect(output[16]).to eq(71)
	end
end