class Array
	# Thanks to manveru for this fun code :)
	# All it does is flip the first and last elements. Pretty cool, eh? :)
	#
	# Example: <tt>[1, 2, 3, 4].flipflop #=> [4, 2, 3, 1]</tt>
	#
	# Returns: Array
	#
	def flipflop
		if size > 1
			[last] + self[1...-1] + [first]
		else
			self
		end
	end

	# Destructive version of Array#flipflop.
	#
	# Returns: Array or nil
	#
	def flipflop!
		if size > 1
			a, b = shift, pop
			unshift(b); push(a)
		end
	end

	# Similar to String#nothing?, except it joins all the elements first and does
	# the same check.
	#
	# Example: <tt>[" ", "   ", ""].nothing? #=> true<tt>
	#
	# Returns: True or false.
	#
	def nothing?
		join('').strip.empty?
	end

	# Check if the array contains any instances of a specific class.
	#
	# Example: <tt>['foo', 1, :bar].contains? Symbol #=> true</tt>
	#
	def contains?(klass)
		map { |obj| obj.class }.include? klass
	end

	# replaces matched array <tt>match_array</tt> as <tt>replace_array</tt> if the array contains all elements and with same sort
	#
	# Example: <tt>[1, 5, 3, 4, 2].replace_array([5,3],["3", "5"]) #=> [1, "3", "5", 4, 2]</tt>
	#
  def replace_array(match_array, replace_arry)
    array = []
    match_array
    self.each_index{|i|
      if self[i].eql?(match_array.first) and self.slice(i, match_array.count).eql?(match_array)
        array.concat self.first(i)
        array.concat replace_arry
        array.concat self.drop(i + match_array.count)
        break
       end
     }
     array = self if array.empty?
     array
  end

end
