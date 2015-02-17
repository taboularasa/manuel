class CreateExecutions < ActiveRecord::Migration
  def change
    create_table :executions do |t|
      t.belongs_to :test_run, index: true
      t.belongs_to :step, index: true

      t.timestamps null: false
    end
    add_foreign_key :executions, :test_runs
    add_foreign_key :executions, :steps
  end
end
