Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :notes, only: %i(index show create update destory)
  get    'labels'      => 'labels#index'
  get    'labels/:id'  => 'labels#show'
  post   'labels'      => 'labels#create'
  put    'labels/:id'  => 'labels#update'
  delete 'labels/:id'  => 'labels#destroy'
end
