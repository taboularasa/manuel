class Execution < ActiveRecord::Base
  belongs_to :test_run
  belongs_to :step
end
