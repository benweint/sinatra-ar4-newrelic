# config.ru (run with rackup)

require 'bundler'
Bundler.require

require './myapp'

require 'newrelic_rpm'
require 'new_relic/agent/instrumentation/rails4/active_record'

run SinatraTestApp
