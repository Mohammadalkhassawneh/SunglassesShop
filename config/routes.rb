Rails.application.routes.draw do
  get 'cards/show'
  root 'application#home'
  devise_for :users
  resources :frames
  resources :lenses
  resources :order_items
  resources :cart
  resource :cards, only:[:show]
  get 'admin/lenses', to: 'lenses#admin_lenses'
  get 'admin/frames', to: 'frames#admin_frames'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
