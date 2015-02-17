class Scenario < ActiveRecord::Base
  belongs_to :feature
  has_many :steps
end
