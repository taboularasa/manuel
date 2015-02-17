class CreateTestPlans < ActiveRecord::Migration
  def change
    create_table :test_plans do |t|

      t.timestamps null: false
    end
  end
end
