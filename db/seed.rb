

require 'active_record'
ActiveRecord::Base.establish_connection({
	database: 'blog_db',
	adapter: 'postgresql'
})

require 'ffaker'

# #MODELS
require_relative '../models/author.rb'
require_relative '../models/blog.rb'
require_relative '../models/tag.rb'

# #DATA
require_relative './author_data.rb'
require_relative './blog_data.rb'
require_relative './tag_data.rb'

# #START FROM SCRATCH
Author.destroy_all
Blog.destroy_all
Tag.destroy_all

author_data = get_author_data()
blog_data = get_blog_data()
tag_data = get_tag_data()

7.times do 
    Blog.create( title: "#{Faker::Name.name}",
     contents: "#{Faker::Lorem.paragraph(3)}",
    	posted_at: "#{Faker::Date.today}"),
		avatar: "#{Faker::imageUrl(300, 200. 'football')}"
		end

		



#--------------------------------------
# 7.times do 
# 	Author.create(
# 		name: "#{Faker::Name.first_name}",
# 		img_url: "#{Faker}"
# 		)
# end
	
#------------------------------------------
# 3.times do 
#     Blog.create( title: "#{Faker::Name.name}",
#      contents: "#{Faker::Lorem.paragraph(3)}",
#     	posted_at: "#{Date.today}")
# end
