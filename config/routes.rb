Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'homes#top'
  get  'homes/about' => 'homes#about'
  post   '/favorite/:music_id' => 'favorites#favorite',   as: 'favorite'
  delete '/favorite/:music_id' => 'favorites#unfavorite', as: 'unfavorite'

  resources :musics do
  	resource :comments, only: [:create]
  end

  resources :users

end
