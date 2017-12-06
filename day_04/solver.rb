#!/usr/bin/env ruby

class Solver
	attr_accessor :table

	def initialize(file)
		@table	= File.read(file).split("\n")
	end

	def solve
		total_valid = 0
		table.each do |line|
			valid = 1
			line = line.split(' ')
			new_array = []
			line.each do |elem|
				valid = 0 if new_array.include?(elem)
				new_array << elem
			end
			total_valid += valid
		end
		return total_valid
	end
end

p Solver.new(ARGV[0]).solve if ARGV[0]