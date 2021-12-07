class RemoveBreakLengthFromShifts < ActiveRecord::Migration[6.0]
  def change
    remove_column :shifts, :break_length, :integer
  end
end
