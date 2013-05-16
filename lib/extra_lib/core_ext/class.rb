class Class
	# Get all instances of this class that exist in ObjectSpace.
	#
	# Example: <tt>Module.instances #=> [Marshal, ObjectSpace, GC, Math, ...]</tt>
	#
	# Returns: Array
	#
	def instances
		objects = []; ObjectSpace.each_object(self) { |obj| objects << obj }; objects
	end

	# Check whether the class has the parent `klass'.
	#
	# Example: <tt>Module.has_parent?(Object) #=> true</tt>
	#
	# Returns: True or false
	#
	def ancestor?(klass)
		ancestors[1..-1].include? klass
	end

	alias parent? ancestor?
end