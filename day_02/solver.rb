#!/usr/bin/env ruby

class Solver
	attr_accessor :table
	attr_accessor :sum

	def initialize(file)
		@table	= File.read(file).split("\n")
		@sum	= 0 
	end

	def solve
		table.each do |line|
			line = line.split(' ').map(&:to_i)
			@sum += (line.max - line.min)
		end

		return sum
	end
end

p Solver.new(ARGV[0]).solve if ARGV[0]