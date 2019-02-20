Rails.application.routes.draw do
  scope "(:locale)", locale: /en|vi/ do
    root "pages#index"
    get "/home", to: "pages#index"
    get "/signup", to: "users#new"
    resources :users
  end
end
