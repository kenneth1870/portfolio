Rails.application.routes.draw do

  namespace :admin do
    resources :articles
    resources :article_categories
  end
  # mount Fae below your admin namespec
  mount Fae::Engine => '/admin'

  resources :posts
  mount Sidekiq::Web => "/sidekiq" # monitoring console
  root to: "home#index"
  HomeController.action_methods.each do |action|
    get "/#{action}", to: "home##{action}", as: "#{action}_page"
  end
  match "*unmatched", to: "errors#route_not_found", via: :all
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
