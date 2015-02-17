class Feature < ActiveRecord::Base
  has_many :test_runs
  has_many :test_plans, through: :test_runs
  has_many :scenarios
end
