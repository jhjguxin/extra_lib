class Object
	# whytheluckystiff: http://whytheluckystiff.net/articles/seeingMetaclassesClearly.html
	#
	# Gets a metaclass (a class of a class).
	#
	# Example: <tt>'hello'.metaclass #=> #<Class:#<String:0xb7a57998>></tt>
	#
	# Returns: The metaclass.
	#
	def metaclass
		class << self; self; end
	end

	# whytheluckystiff: http://whytheluckystiff.net/articles/seeingMetaclassesClearly.html
	#
	# Evaluate code on the metaclass.
	#
	# Example:
	#
	# <tt>  s = 'foo'; s.meta_eval { define_method(:longer) { self * 2 } }</tt>
	#
	# <tt>  s.longer #=> "foofoo"'</tt>
	#
	# Returns: The block's final expression.
	#
	def meta_eval(&block)
		metaclass.instance_eval(&block)
	end

	# whytheluckystiff: http://whytheluckystiff.net/articles/seeingMetaclassesClearly.html
	#
	# Define an instance method on the metaclass.
	#
	# Example: <tt>s = 'foo'; s.meta_def(:longer) { self * 2 }; s.longer #=> "foofoo"</tt>
	#
	# Returns: A Proc object of the method.
	#
	def meta_def(name, &block)
		meta_eval { define_method(name, &block) }
	end

	# whytheluckystiff: http://whytheluckystiff.net/articles/seeingMetaclassesClearly.html
	#
	# Adds a class instance method.
	#
	# Example:
	#
	# <tt>  SomeClass.class_def(:whoami) { 'I am SomeClass, silly!' }</tt>
	#
	# <tt>  SomeClass.whoami #=> "I am SomeClass, silly!"</tt>
	#
	# Returns: A Proc object of the method, or nil.
	#
	def class_def(name, &block)
		class_eval { define_method(name, &block) } if kind_of? Class
	end

	# Credit to the original author. This method retrieves a deep copy of the
	# current object.
	#
	# Returns: Deep copy of the same object.
	#
	def deepcopy
		Marshal.load(Marshal.dump(self))
	end

	# Convert object to boolean.
	#
	# Example:
	#
	# <tt>  "foo".to_bool  #=> true</tt>
	#
	# <tt>  false.to_bool  #=> false</tt>
	#
	# <tt>  nil.to_bool    #=> nil</tt>
	#
	# <tt>  true.to_bool   #=> true</tt>
	#
	# Returns: Boolean or nil.
	#
	def to_bool
		if [FalseClass, NilClass].include? self.class
			self
		else
			true
		end
	end
end