Rails.application.routes.draw do
  resources :work_schedules
  devise_for :users
  resources :departments
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
