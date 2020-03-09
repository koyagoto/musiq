Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'musics#top'
  get  'musics/about' => 'musics#about'
  
  resources :musics
end
