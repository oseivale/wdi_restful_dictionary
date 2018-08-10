Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
resources :entries

get '/show/:id' => 'entries#show'

get '/new' => 'entries#new'

get '/edit/:id' => 'entries#edit'


end
