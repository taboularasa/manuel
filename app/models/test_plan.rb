class TestPlan < ActiveRecord::Base
  has_many :test_runs
  accepts_nested_attributes_for :test_runs
  has_many :scenarios, through: :test_runs
  has_many :testers, through: :test_runs
end
