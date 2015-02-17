class Scenario < ActiveRecord::Base
  belongs_to :feature
  has_many :steps
  accepts_nested_attributes_for :steps,
                                reject_if: :all_blank,
                                allow_destroy: true
end
