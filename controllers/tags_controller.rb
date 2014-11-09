
# NEW form

get '/tags/new' do 
	@tags = Tags.all
	erb :'/tags/new'
end

#EDIT
get '/tags/:id/edit' do 
	@tags = Tags.find(params[:id])
end

#CREATE
post'/tags' do 
	tags = Tags.new(params[:id])
	if tags.save
		redirect("/tags/#{tag.id}")
	else
		redirect("/tags/new")
	end
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
