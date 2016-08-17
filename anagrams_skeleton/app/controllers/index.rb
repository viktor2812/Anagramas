get '/' do
  erb :index
end

post '/new_word' do
  user_word = params[:user_word]
  @palabra = Word.find_word(user_word)
  
  erb :index
end