Rails.application.routes.draw do
  root to: 'api/v1/recipes#index'
  
  namespace 'api' do
    namespace 'v1' do
      resources :recipes do
        resources :ingredients
      end
    end
  end
end
