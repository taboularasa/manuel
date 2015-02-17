class CreateTestRuns < ActiveRecord::Migration
  def change
    create_table :test_runs do |t|
      t.belongs_to :test_plan, index: true
      t.belongs_to :feature, index: true

      t.timestamps null: false
    end
    add_foreign_key :test_runs, :test_plans
    add_foreign_key :test_runs, :features
  end
end
