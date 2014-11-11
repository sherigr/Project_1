
# NEW form

get '/tags/new' do  
	erb :'tags/new'
end


#EDIT
get '/tags/:id/edit' do 
	@tag = Tag.find(params[:id])
	@blogs = Blog.all
	erb :'tags/edit'
end

#CREATE
post'/tags/' do 
	tag = Tag.new(params[:id])
	if tag.save
		redirect("/tags/#{tag.id}")
	else
		erb :'tags/new'
	end
end

#SHOW
get '/tags/:id' do 
	@tag = Tag.find(params[:id])
	erb :'tags/show'
end


#UPDATE
put '/tags/:id' do 
	tag = Tag.find(params[:id])
	if tag.update(params[:tag])
		redirect("/tags/#{tag.id}")
	else
		redirect('/tags/#{tag.id}/edit')
	end
end


#DESTROY

delete '/tags/:id' do 
	tag = Tag.find(params[:id])
	if tag.destroy
		redirect('/tags')
	else
		redirect("/tags/#{tag.id}")
	end
end
