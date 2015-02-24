NUMERALS = {
	ones: {
		'1' => 'I', 
	  '5' => 'V',
    '10' => 'X' 
	},
	tens: {
		'10' => 'X',
		'50' => 'L',
    '100' => 'C'
	},
	hundreds: {
		'100' => 'C',
	  '500' => 'D',
    '1000' => 'M'
	},
	thousands: {
    '1000' => 'M'
  }
}

class Fixnum
  def to_roman
	  backwards_numeral = ""
    backwards_number = self.to_s.chars.reverse
    d_keys = NUMERALS.keys
    backwards_number.each_with_index do |num, i|
      if num.to_i < 4
        backwards_numeral += NUMERALS[d_keys[i]]['1'] * num
      end
    end
    return backwards_numeral
  end
end