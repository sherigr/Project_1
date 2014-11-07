
require 'sinatra'
require 'sinatra/reloader'
require 'active_record'
require 'pry'
require 'better_errors'

require_relative 'models/author.rb'
require_relative 'models/blog.rb'
require_relative 'models/tag.rb'

require_relative 'controllers/home_controller/'
require_relative 'controllers/authors_controller'
require_relative 'controllers/blogs_controller'
require_relative'controllers/tags_controller'

configure :development do
  use BetterErrors::Middleware
  BetterErrors.application_root = File.expand_path('..', __FILE__)
end

ActiveRecord::Base.establish_connection({
	adapter: 'postgresql',
	database: 'blog_db',
	host: 'localhost'
})

after { ActiveRecord::Base.connection.close }

