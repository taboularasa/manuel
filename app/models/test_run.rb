class TestRun < ActiveRecord::Base
  belongs_to :tester
  belongs_to :test_plan
  belongs_to :feature
  belongs_to :scenario
  has_many :executions, dependant: :destroy
end
