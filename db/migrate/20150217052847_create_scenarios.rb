class CreateScenarios < ActiveRecord::Migration
  def change
    create_table :scenarios do |t|
      t.string :title
      t.belongs_to :feature, index: true

      t.timestamps null: false
    end
    add_foreign_key :scenarios, :features
  end
end
