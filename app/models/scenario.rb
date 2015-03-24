class Scenario < ActiveRecord::Base
  belongs_to :feature
  has_many :test_runs
  has_many :test_plans, through: :test_runs
  has_many :steps, dependent: :destroy
  accepts_nested_attributes_for :steps,
                                reject_if: :all_blank,
                                allow_destroy: true
end
