# Sinatra + ActiveRecord 4 + New Relic test app

This is a simple test-case app for debugging New Relic's ActiveRecord 4
instrumentation when used in the context of a Sinatra application.

To get it running:

* `bundle`
* `bundle exec rake db:setup` (creates the sqlite DB, populates a few records)
* Edit `config/newrelic.yml` to add a valid license key
* `bundle exec rackup -p <port>`
* Visit http://localhost:<port>
* Wait for ~1 minute for the agent to report data
