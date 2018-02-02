Rails.application.routes.draw do
  get 'students/new'

  get 'students/index'

  get 'students/show'

  get 'students/edit'

  get 'new/index'

  get 'new/show'

  get 'new/edit'

  get 'departments/new'

  get 'departments/index'

  get 'departments/edit'
  get 'students/show_all'
  root to: 'departments#new'
  
  devise_for :users
  resources :departments 
  resources :students

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
