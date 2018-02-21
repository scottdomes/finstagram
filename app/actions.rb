helpers do
  def is_logged_in?
    !session[:user_id].nil?
  end
end


# before do
#   halt(401, erb(:error_401)) unless is_logged_in?
# end

get '/books/new' do
  erb :"/books/new"
end


get '/' do
  @books = Book.all
  erb :home
end


# before do
#   @note = 'Hi!'
#   request.path_info = '/foo/bar/baz'
# end

# get '/foo/*' do
#   @note #=> 'Hi!'
#   params['splat'] #=> 'bar/baz'
# end















get '/about' do 
  erb :about
end

# post '/books/new' do
#   last_name = params[:author].split.last
#   matching_authors = Author.where({ last_name: last_name })
#   matching_authors.find_by({ first_name: params })
#   # Search for the author by full name in our database




#   # If the author exists, get their id, and assign it to the author_id field
#   # If the author does not exist, create the author, then get their id...
  


#   book = Book.new({ title: params[:title], author_id:  })
#   puts book.valid?
#   puts book.inspect
# end

get '/login' do
  erb :login
end

post '/login' do
  username = params[:username]
  password = params[:password]
  user = User.find_by({ username: username })
  if user.nil? || password != user[:password]
    redirect '/login'
  else
    session[:user_id] = user[:id]
    redirect '/'
  end
end

get '/logout' do
  session.clear
  redirect '/'
end

post '/password_reset' do
  user.reset_password(params[:new_password])
  redirect '/'
end

get '/books/:id' do
  id = params[:id]
  @book = Book.find(id)
  erb :show_book
end

get '/authors/:id' do
  id = params[:id]
  @author = Author.find(id)
  erb :show_author
end
