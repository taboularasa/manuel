Rails.application.routes.draw do
  resources :executions

  resources :test_runs
  resources :test_plans
  resources :steps
  resources :scenarios
  resources :features
end
