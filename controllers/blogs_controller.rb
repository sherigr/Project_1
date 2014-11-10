

#INDEX
get '/' do
  @blogs = Blog.all
   @authors = Author.all
  erb :"blogs/index"
end

get '/blogs' do
  @blogs = Blog.all
  erb :"blogs/index"
end

#NEW
get '/blogs/new' do 
	@blog = Blog.new
	  @authors = Author.all
	erb :"blogs/new"
end 


#Create
post '/blogs/' do
	@blog = Blog.new(params[:blog])
	if @blog.save
		redirect("/blogs/#{blog.id}")
	else
		erb :"blogs/new"
	end
end


#EDIT
get '/blogs/:id/edit' do
	@blog = Blog.find(params[:id])
	erb :'blogs/edit'
end


#EDIT
post '/blogs/:id' do
     blogs = Blog.find(params[:id])
     blog.title = params[:title]
     blog.contents = params[:contents]
    redirect("blogs/#{blog.id}")
    end


#SHOW
 get '/blogs/:id' do
     @blog = Blog.find(params[:id]) 
     erb :"blogs/show"    
     end

	#DESTROY
	delete '/blogs/:id' do 
		blog = Blog.find(params[:id])
		if blog.destroy 
			redirect('/blogs')
		else
			redirect("/blogs/#{blog.id}")
		end
	end

