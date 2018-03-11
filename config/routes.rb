Rails.application.routes.draw do
  root 'static_pages#index'
  get 'doctor', to: 'static_pages#doctor'
  get 'about',  to: 'static_pages#about'
  get 'insurance', to: 'static_pages#insurance'
  get 'contact',  to: 'static_pages#contact'
  get 'plans',    to: 'static_pages#plans'
end
