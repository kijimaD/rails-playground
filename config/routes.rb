Rails.application.routes.draw do
  resources :posts
  resources :r_products, only: [:index, :show]
  resources :sc_products
  get ':year/:month/:day', to: redirect("/%{year}/0%{month}/0%{day}"),
      constraints: { year: /\d{4}/, month: /\d{1}/, day: /\d{1}/ }
  get ':year/:month/:day', to: redirect("/%{year}/0%{month}/%{day}"),
      constraints: { year: /\d{4}/, month: /\d{1}/, day: /\d{2}/ }
  get ':year/:month/:day', to: redirect("/%{year}/0%{month}/%{day}"),
      constraints: { year: /\d{4}/, month: /\d{2}/, day: /\d{1}/ }
  get ':year/:month/:day', to: redirect("/%{year}/0%{month}/%{day}"),
      constraints: { year: /\d{4}/, month: /\d{1}/ }
  get ':year(/:month(/:day))', to: 'posts#index',
      constraints: { year: /\d{4}/, month: /\d{2}/, day: /\d{2}/ }
  get 'game/ping'
  get 'game/pong', as: 'different_name'
  get 'home/applepie', to: 'home#ping'
  get 'page/index'
  get 'example/test'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
