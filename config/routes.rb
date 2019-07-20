Rails.application.routes.draw do
  root "posts/index"

  get "posts/index" => "posts#index"
  get "posts/new" => "posts#new"
  post "posts/create" => "posts#create"
  get "posts/:id/show" => "posts#show"
  get "post/edit" => "posts#edit"
  post "posts/:id/update" => "posts#update"
  get "posts/destroy" => "posts#destroy"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
