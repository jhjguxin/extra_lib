require 'ostruct'

class OpenStruct
	# Gets the open struct hash.
	#
	# Returns: Hash
	#
	def to_hash
		@table
	end

	# Get the YAML representation of the struct.
	#
	# Returns: YAML string
	#
	def to_yaml(*args)
		require 'yaml'
		to_hash.to_yaml(*args)
	end
end