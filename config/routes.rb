Rails.application.routes.draw do
  mount Sidekiq::Web => "/sidekiq" # monitoring console
  root to: 'home#index'
  HomeController.action_methods.each do |action|
    get "/#{action}", to: "home##{action}", as: "#{action}_page"
  end
  match "*unmatched", to: "errors#route_not_found", via: :all
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
