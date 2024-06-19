class AddCounterToRoutines < ActiveRecord::Migration[7.1]
  def change
    add_column :routines, :counter, :integer, default: 1
  end
end
