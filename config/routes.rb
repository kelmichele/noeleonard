Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#home'

  get '/motorcycle-accidents', to: 'static_pages#motorcycle-accidents'
  get '/auto-accidents', to: 'static_pages#auto-accidents'
  get '/trucker-accidents', to: 'static_pages#18wheeler-accidents'
  get '/espanol', to: 'static_pages#espanol'
  get '/about', to: 'static_pages#about'
  get '/page', to: 'static_pages#page'
  get '/resources', to: 'static_pages#resources'
  get '/personal-injury', to: 'static_pages#personal-injury'

  get '/fb', to: 'links#fb'
  get '/twitter', to: 'links#twitter'
  get '/google', to: 'links#google'
  get '/linkedin', to: 'links#linkedin'
  get '/youtube', to: 'links#youtube'

  get '/client', to: 'clients#new', as: 'contact'
  post '/client', to: 'clients#create'
end
