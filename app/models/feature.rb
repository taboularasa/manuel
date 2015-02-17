class Feature < ActiveRecord::Base
  has_many :test_runs
  has_many :test_plans, through: :test_runs
  has_many :scenarios
  accepts_nested_attributes_for :scenarios,
                                reject_if: :all_blank,
                                allow_destroy: true
end
