class Module
	# Go through each defined class in the module. Credit to apeiros for this =)
	#
	def each_class
		constants.each { |constant_name|
			constant = const_get(constant_name.intern)
			yield constant if constant.class == Class && constant.name =~ /#{self.name}/
		}
	end

	# List classes within a module. Thanks to apeiros for this.
	#
	# Example: <tt>Class.classes #=> [TrueClass, FalseClass, NilClass, Class]</tt>
	#
	# Returns: Array
	#
	def classes
		list = []
		each_class { |class_constant|
			list	<< class_constant
		}
		return list
	end
end
