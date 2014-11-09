require 'sinatra'
require 'sinatra/reloader'
require 'active_record'


require 'rubygems'


require_relative 'models/author.rb'
require_relative 'models/blog.rb'
require_relative 'models/tag.rb'

require_relative 'controllers/home_controller'
require_relative 'controllers/authors_controller'
require_relative 'controllers/blogs_controller'
require_relative 'controllers/tags_controller'




ActiveRecord::Base.establish_connection(ENV['DATABASE_URL'] || 'postgres://localhost/mydb')
after { ActiveRecord::Base.connection.close }




run Sinatra::Application


