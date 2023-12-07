Rails.application.routes.draw do
  get   'inquiry'         => 'inquiry#index'   
  get   'about'         => 'pans#about'     
  get   'ranking'         => 'pans#ranking'   
  post  'inquiry/confirm' => 'inquiry#confirm'   
  post  'inquiry/thanks'  => 'inquiry#thanks'   
  get 'blogs/index'
  resources :blogs
  get 'pans/ranking' => 'pans#ranking'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :pans do
    resources :comments, only: [:create]
  end

  root 'pans#top'
  
  
 


end
