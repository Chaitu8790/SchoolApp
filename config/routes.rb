Rails.application.routes.draw do
	root :to => 'home#index'
  resources :records
  resources :marks
  resources :subjects
  resources :students
  resources :teachers
  resources :ranks
    put '/recedit' => "records#recedit"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
