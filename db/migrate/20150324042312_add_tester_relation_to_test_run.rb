class AddTesterRelationToTestRun < ActiveRecord::Migration
  def change
    add_reference :test_runs, :tester, index: true, foreign_key: true
  end
end
