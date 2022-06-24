Discovery::Engine.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :pets, only: %i(index show edit) do
        collection do
          get :adopted
        end
      end
    end
  end
end
