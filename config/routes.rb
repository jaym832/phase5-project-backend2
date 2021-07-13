Rails.application.routes.draw do
  post '/newuser', to: 'users#create'
  get '/me', to: 'users#show'
  patch '/update', to: 'users#update'
  
  get '/rehomings', to:'rehomings#index'
  delete 'deleterehoming/:id',to:'rehomings#destroy'
  patch '/update-rehome', to: 'rehomings#update'
  
  post '/newpet', to: 'pets#create'
  post '/findpet', to: 'pets#findPet'
  get 'pets', to: 'pets#index'

  get '/favorites', to: 'favorites#index'
  delete '/deletefavorite/:id', to: 'favorites#destroy'
  
  post '/login', to: "sessions#create"
  delete '/logout', to: 'sessions#destroy'

  post '/newmessage', to: 'messages#create'
  get '/messages', to: 'messages#index'
  get '/messages', to: 'messages#index'

  post '/newconvo', to: 'conversations#create'
  get '/conversations', to: 'conversations#index'
  delete '/deleteconvo', to: 'conversations#destroy'


  

end
