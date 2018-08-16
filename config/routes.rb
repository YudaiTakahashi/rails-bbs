Rails.application.routes.draw do
  root to: 'comment#comment'
  get 'comments', to: 'comment#comment'
  post 'comments',to: 'comment#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
