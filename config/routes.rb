Rails.application.routes.draw do
  # get 'search' => "search_repo#index"
  # get "search_repo/search", as: :search
  # resources :search, only: [:index] do
  #   collection do
  #     get  :search_repo
  #   end
  # end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "search_repo#index"
end
