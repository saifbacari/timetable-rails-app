Rails.application.routes.draw do
  get "shops/new", to: "shops#new"
  post "shops", to: "shops#create"
  get "shops/:id", to: "shops#show", as: :shop
end
