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
  get '/hsdh', to: 'links#hsdh'

  get '/contact', to: 'clients#new', as: 'contact'
  post '/contact', to: 'clients#create'
  get '/thank-you', to: 'clients#thank-you', as: 'thank-you'

  get '/mobile-accident-attorney', to: 'mobileals#new', as: 'mobile-accident-attorney'
  post '/mobile-accident-attorney', to: 'mobileals#create'
  get '/thanks', to: 'mobileals#thanks', as: 'thanks'
end
