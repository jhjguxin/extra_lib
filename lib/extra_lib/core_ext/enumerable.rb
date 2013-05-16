module Enumerable
	# Get a hash representation of an array. The number of flattened array elements
	# has to be even in order for this to work.
	#
	# Example: <tt>[:foo, :bar, :baz, :qux].to_hash #=> {:foo => :bar, :baz => :qux}</tt>
	#
	# Returns: Hash object
	#
	def to_hash
		Hash[*to_a.flatten]
	end

end
