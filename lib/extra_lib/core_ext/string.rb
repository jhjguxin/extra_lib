class String

	# Check self or provider string is defined as an constant or constantize.
	#
	# Example: <tt>"String".class_exists? #=> true</tt>
	#
	# Returns: boolen
	#
  def class_exists?(class_name = nil)
    class_name = self if class_name.nil?
    (class_name.capitalize.constantize.is_a?(Class) ? true : false rescue false) or (class_name.classify.constantize.is_a?(Class) ? true : false rescue false)
  end

	# Generate a random string with a given length and seed.
	#
	# Example: <tt>String.random(4, 'abcdefg') #=> "cdeg"</tt>
	#
	# Returns: String
	#
	def self.random(length = 8, seed = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789')
	  length ||= 8
		s = ''; length.times { s << seed.shuffle[0] }; s
	end

	def random(length = 8, seed = nil)
    seed = self if seed.nil?
    self.class.random(length, self)
	end

	# Randomly shuffle a string.
	#
	# Example: <tt>'foobar'.shuffle #=> bofoar</tt>
	#
	# Returns: String
	#
	def shuffle
		split(//u).sort_by { rand }.join('')
	end

	# Destructive version of String#shuffle.
	#
	# Returns: String or nil
	#
	def shuffle!
		shuffled     =  shuffle
		self[0..-1]  =  shuffled unless shuffled == self
	end

	# Split string into an array of characters. Should be multi-byte safe...
	#
	# Example: <tt>'foo'.chars #=> ["f", "o", "o"]</tt>
	#
	# Returns: Array
	#
	# 'foo'.chars.to_a  # => ["f", "o", "o"]

	# Capitalize words.
	# Example: <tt>'The dog is stupid'.capitalize_words('is') #=> "The Dog is Stupid"</tt>
	#
	# Returns: String with words capitalized.
	#
	def capitalize_words(*disclude)
		disclude = disclude.flatten
		# flatten(level)
    # Returns a new array that is a one-dimensional flattening of self (recursively).
		gsub(/\w+/u) { |word| disclude.include?(word) ? word : word.capitalize }
	end

	# My unsubmitted answer to a previous RubyQuiz question. Basically #munge will
	# take words, scramble only the middle contents of the word while the first and
	# last letters remain intact.
	#
	# Example: <tt>'You look like a terrifying goblin'.munge #=> "You look lkie a tiifyenrrg goilbn"</tt>
	#
	# Returns: Munged string
	#
	def munge
		gsub(/\w+/u) do |word|
			if word.size > 2
				word[0,1] << word[1...-1].shuffle << word[-1,1]
			else
				word
			end
		end
	end

	# Destructive version of String#munge.
	#
	# Returns: Munged string or nil.
	#
	def munge!
		munged       =  munge
		self[0..-1]  =  munged unless munged == self
	end

	# Get an array of "words".
	#
	# Example: <tt>"hello, world!".words #=> ["hello", "world"]</tt>
	#
	# Returns: Array
	#
	def words
		scan(/\w+/u)
	end

	# Wrap string by characters and join them by a specified separator.
	#
	# Example: <tt>"1234".wrap(2) #=> "12\n34"</tt>
	#
	# Returns: String
	#
	def wrap(width = 80, separator = $/)
		scan(/.{1,#{width}}/u).join(separator)
	end

	# Destructive version of String#wrap.
	#
	# Returns: String or nil
	#
	def wrap!(width = 80, separator = $/)
		wrapped      =  wrap(width, separator)
		self[0..-1]  =  wrapped unless wrapped == self
	end

	# Checks if a string is nothing but whitespace or is empty.
	#
	# Example: <tt>" ".nothing? #=> true</tt>
	#
	# Returns: True or false
	#
	alias nothing? blank?

	alias +@ size
end
