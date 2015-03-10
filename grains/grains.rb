
class Grains

	attr_reader :total

	def initialize
    @total ||= calculate_total
	end
  
  def square(num)
    (1..num).inject { |sum| sum * 2 }
  end

  def calculate_total
    square(65) - 1
  end

end