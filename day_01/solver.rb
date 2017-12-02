#!/usr/bin/env ruby

class Solver
	attr_accessor :hash
	attr_accessor :captcha

	def initialize(captcha)
		@hash = {prev: nil, sum: 0}
		@captcha = captcha
	end

	def solve
		hash[:sum] += @captcha.split('').first.to_i if @captcha.split('').last == @captcha.split('').first

		@captcha.split('').each do |c|
			hash[:sum] += c.to_i if hash[:prev] == c.to_i
			hash[:prev] = c.to_i
		end

		return hash[:sum]
	end
end

p Solver.new(ARGV[0]).solve if ARGV[0]

