Rails.application.routes.draw do
  root 'static_pages#index'
<<<<<<< HEAD
  get 'doctor', to: 'static_pages#doctor'
  get 'about',  to: 'static_pages#about'
  get 'insurance', to: 'static_pages#insurance'
=======

  get 'doctor',   to: 'static_pages#doctor'

  get 'about',    to: 'static_pages#about'
  
  get 'contact',  to: 'static_pages#contact'
>>>>>>> ce7a3780cc31d96d6ff86c6e7f689d7dc02b5dea
end
