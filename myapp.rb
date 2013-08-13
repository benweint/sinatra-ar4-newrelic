ActiveRecord::Base.establish_connection(
  :adapter => 'sqlite3',
  :database => 'all.sqlite3'
)

class Blog < ActiveRecord::Base; end

class SinatraTestApp < Sinatra::Base
  get '/' do
    "Blogs: " + Blog.all.map { |b| b.name }.join(",")
  end
end
