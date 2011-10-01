require 'rubygems'
require 'bundler/setup'
require 'haml'

require 'sinatra' unless defined?(Sinatra)

configure do
  # load models
  $LOAD_PATH.unshift("#{File.dirname(__FILE__)}/lib")
  Dir.glob("#{File.dirname(__FILE__)}/lib/*.rb") { |lib| require File.basename(lib, '.*') }
end
