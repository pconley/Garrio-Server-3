Rails.application.routes.draw do
  root "pages#show", page: "home"
  get "/pages/error", to: 'pages#error', as: 'error'
  get "/pages/:page" => "pages#show", as: 'pages'
  resources :widgets
end
