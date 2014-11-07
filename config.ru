require 'sinatra'
require 'sinatra/reloader'
require 'active_record'


require 'rubygems'


require_relative 'models/author.rb'
require_relative 'models/blog.rb'
require_relative 'models/tag.rb'

#ADD R_R FOR CONTROLLERS





ActiveRecord::Base.establish_connection(ENV['DATABASE_URL'] || 'postgres://localhost/mydb')
after { ActiveRecord::Base.connection.close }




run Sinatra::Application


