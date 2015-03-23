Rails.application.routes.draw do
  resources :executions
  resources :test_runs
  resources :test_plans
  resources :features do
    resources :scenarios
  end
  root 'features#index'
end
