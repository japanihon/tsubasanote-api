Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :notes, only: %i(index show create update destory) do
    resources :labels, only: %i(create destroy), controller: :note_labels
  end
  resources :labels, only: %i(index show create update destory)
end
