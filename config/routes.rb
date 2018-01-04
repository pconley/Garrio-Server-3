Rails.application.routes.draw do
  resources :colors
  get "/widgets/search", to: 'widgets#search', as: 'search'
  resources :widgets

  root "pages#show", page: "home"
  get "/pages/error", to: 'pages#error', as: 'error'
  get "/pages/:page" => "pages#show", as: 'pages'
  get "/dashboards/:dashboard" => "dashboards#show", as: 'dashboards'
end
