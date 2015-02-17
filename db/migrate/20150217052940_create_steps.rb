class CreateSteps < ActiveRecord::Migration
  def change
    create_table :steps do |t|
      t.string :title
      t.belongs_to :scenario, index: true

      t.timestamps null: false
    end
    add_foreign_key :steps, :scenarios
  end
end
