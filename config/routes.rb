Rails.application.routes.draw do
  scope "(:locale)", locale: /en|vi/ do
    root "pages#home"
    get "/home", to: "pages#home"
    get "/landing", to: "pages#landing"
  end
end
