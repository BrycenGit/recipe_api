Rails.application.routes.draw do
  root to: 'api/v1/recipes#index'

  namespace 'api' do
    namespace 'v1' do
      resources :recipes do
        resources :ingredients do
          resources :measurements
        end
      end
      resources :ingredients
    end
  end
end
