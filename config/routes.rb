Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :tipo_suelos
  resources :tipo_cultivos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
