Rails.application.routes.draw do
  
  get '/' => 'military#main'
  get '/login' => 'military#login'
  post '/mainframe' => 'military#mainframe'


end
