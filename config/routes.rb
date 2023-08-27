Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :blogs, only: [:index, :create, :new]
  resources :feedbacks, only: [:index, :create, :show]
  # Defines the root path route ("/")
  root "blogs#index"
  get "new" =>  "blogs#new"
  get "feedback/:id/new", to: "feedbacks#new", as: :new_feedback
  get "feedback/:id/show", to: "feedbacks#show", as: :show_feedback
end
