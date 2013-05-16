# See the math module, as methods from Math were added in Numeric dynamically.
#
class Numeric

	# Checks whether a number is a negative number.
	# Example: <tt>-4.negative? #=> true</tt>
	#
	# Returns: True or false
	#
	def negative?
		self < 0
	end

	# Checks whether a number is positive. Here we will consider zero as being
	# a positive number.
	#
	# Example: <tt>5.positive? #=> true</tt>
	#
	# Returns: True or false
	#
	def positive?
		self >= 0
	end

	# Add commas every 3 spots in a number.
	#
	# Example: <tt>(4569810.12).format #=> 4,569,810.12</tt>
	#
	# Returns: Commatized string
	#
	def format(comma = ',', decimal = '.')
		to_s.reverse.scan(/(?:-?\d{1,3}(?:\.\d{1,3})?-?)/).map { |s| s.sub('.', decimal) }.join(comma).reverse
	end

	# Credit to apeiros for this method.
	#
	# Min/max method.
	#
	# Example: <tt>-2.crop(0..1) # => 0</tt>
	#
	# Returns: Numeric
	#
	def crop(range_or_min, max=nil)
		range = max ? range_or_min..max : range_or_min
		if range.include?(self)
			self
		elsif self < range.first
			range.first
		else
			range.last
		end
	end
end
