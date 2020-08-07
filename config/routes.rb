Rails.application.routes.draw do
namespace :api do
    resources :authors
  end
  namespace :admin do
      resources :author_books
      resources :authors
      resources :books

      root to: "author_books#index"
    end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
