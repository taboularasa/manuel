Rails.application.routes.draw do
  devise_for :testers
  resources :executions
  resources :test_runs
  resources :test_plans
  resources :features do
    resources :scenarios
  end
  root 'features#index'
end
