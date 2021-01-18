Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do
      resources :recipes do
        resources :ingredients
      end
    end
  end
end
