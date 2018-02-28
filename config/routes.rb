Rails.application.routes.draw do
  root 'static_pages#index'

  get 'doctor', to: 'static_pages#doctor'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
