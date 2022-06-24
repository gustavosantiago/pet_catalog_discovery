Discovery::Engine.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :pets, only: %i(index show edit)
    end
  end
end
