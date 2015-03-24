class AddResultCdToExecution < ActiveRecord::Migration
  def change
    add_column :executions, :result_cd, :integer
  end
end
