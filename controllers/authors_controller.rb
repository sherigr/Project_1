

# AUTHORS

	# INDEX	
	get '/authors' do
		@authors = Author.all
		erb :'authors/index'
	end

# NEW form
get '/authors/new' do
	@authors = Author.all 
	erb :'/authors/new'
end

#CREATE new author
	post '/authors' do
		@author = Author.new(params[:author])
		 if author.save
		 	redirect ("/authors/#{author.id}")
		 else
		 	redirect ("/authors/new")
		end
	end
	
# UPDATE
put '/authors/:id' do
	author = Author.find(params[:id])
	if author.update(params[:author])
		redirect("/authors/#{author.id}") 
	else
		redirect("/authors/#{author.id}/edit")
	end
end

#SHOW
	get '/authors/:id' do
		@author = Author.find(params[:id])
			erb :'author/show'
	end

#EDIT
	get '/authors/::id/edit' do
		@author = Author.find(params[:id])
			erb :'authors/edit'
	end

	
#DESTROY
delete '/authors/:id' do 
	author = Author.find(params[:id])
	if author.destroy 
		redirect('/authors')
	else
		redirect("/authors/#{author.id}")
	end
end

