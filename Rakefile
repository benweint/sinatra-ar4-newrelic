task :environment do
  require 'bundler'
  Bundler.require
  require './myapp'
end

namespace :db do
  desc "Migrate the database"
  task(:migrate => :environment) do
    ActiveRecord::Base.logger = Logger.new(STDOUT)
    ActiveRecord::Migration.verbose = true
    ActiveRecord::Migrator.migrate("db/migrate")
  end

  task(:setup => :migrate) do
    10.times { |i| Blog.create(:name => "blog#{i}") }
  end
end
