Rails.application.routes.draw do
  devise_for :users

  resources :docs
  authenticated :user do
    root "docs#index", as: "autenticated_root"
  end

  root 'welcome#index'
end
