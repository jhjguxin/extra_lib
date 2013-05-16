# ExtraLib

extra library for ruby from francis jiang, which include some extra method for ruby base class, need 'activeresource'

## Installation

Add this line to your application's Gemfile:

    gem 'extra_lib'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install extra_lib

## Usage

please check rspec ...

## Debug

    irb
    $:.push File.expand_path("../lib", __FILE__)
    require 'rubygems'
    require 'bundler'
    Bundler.require(:default)
    require "extra_lib"
    require "debugger"

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
