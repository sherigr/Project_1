
#Create
post '/blogs' do
	blog = Blog.new(params[:blog])
	if blog.save
		redirect("/blogs/#{blog.id}")
	else
		redirect("/blogs/new")
	end
end

#EDIT
get '/blogs/:id/edit' do
	@blog = Blog.find(params[:id])
	erb :'blogs/edit'
end

#SHOW
get '/blogs/:id' do 
	@blog = Blog.find(params[:id])
	erb :'blogs/show'

	#DESTROY
	delete '/blogs/:id' do 
		blog = Blog.find(params[:id])
		if blog.destroy 
			redirect('/blogs')
		else
			redirect("/blogs/#{blog.id}")
		end
	end
end
