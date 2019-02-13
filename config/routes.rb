Rails.application.routes.draw do
  root "pages#home"
  get "/home", to: "pages#home"
  get "/landing", to: "pages#landing"
end
