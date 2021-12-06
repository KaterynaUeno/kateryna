class AddBreakLengthToShift < ActiveRecord::Migration[6.0]
  def change
    add_column :shifts, :break_length, :integer
  end
end
