class Step < ActiveRecord::Base
  belongs_to :scenario
  has_many :executions
end
