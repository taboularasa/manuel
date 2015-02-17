class TestPlan < ActiveRecord::Base
  has_many :test_runs
  has_many :features, through: :test_runs
end
