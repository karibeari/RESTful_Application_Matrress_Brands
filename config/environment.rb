require 'bundler/setup'
Bundler.require

require_all 'lib'
require_relative '../app.rb'

ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: 'db/mattressstores.db'
)
