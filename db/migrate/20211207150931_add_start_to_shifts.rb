class AddStartToShifts < ActiveRecord::Migration[6.0]
  def change
    add_column :shifts, :start, :datetime
  end
end
