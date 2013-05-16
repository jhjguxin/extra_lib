## require all active_support by hand
require 'active_support/all'

require "extra_lib/version"
require "extra_lib/core_ext/array"
require "extra_lib/core_ext/class"
require "extra_lib/core_ext/enumerable"
require "extra_lib/core_ext/file"
require "extra_lib/core_ext/module"
require "extra_lib/core_ext/numeric"
require "extra_lib/core_ext/object"
require "extra_lib/core_ext/array"
require "extra_lib/core_ext/objectspace"
require "extra_lib/core_ext/openstruct"
require "extra_lib/core_ext/string"
require "extra_lib/core_ext/symbol"


#Dir["#{File.dirname(__FILE__)}/lib/extra_lib/core_ext/*.rb"].each do |path|
#  next if File.basename(path, '') == 'logger'
#  require path
#end
