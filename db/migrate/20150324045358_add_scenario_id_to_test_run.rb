class AddScenarioIdToTestRun < ActiveRecord::Migration
  def change
    add_reference :test_runs, :scenario, index: true, foreign_key: true
  end
end
