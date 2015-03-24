class Execution < ActiveRecord::Base
  belongs_to :test_run
  belongs_to :step
  as_enum :result, fail: 0, pass: 1, prefix: true
end
