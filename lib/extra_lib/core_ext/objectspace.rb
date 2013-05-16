module ObjectSpace
	class << self
		include Enumerable; alias each each_object
	end
end