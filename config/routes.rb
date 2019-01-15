Rails.application.routes.draw do
  resources :ducks, only: [:index, :show, :new, :create, :edit, :update ]
  resources :students, only: [:index, :show, :new, :create, :edit, :update]

  get "/students", to: "students#index"
  get "/students/new", to: "students#new", as: "student_new"
  get "/students/:id", to: "students#show"
  post "/students", to: "students#create"
  get "/students/:id/edit", to: "students#edit", as: "student_edit"
  patch "/students/:id", to: "students#update"

end
