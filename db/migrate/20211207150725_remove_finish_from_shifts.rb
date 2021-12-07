class RemoveFinishFromShifts < ActiveRecord::Migration[6.0]
  def change
    remove_column :shifts, :finish, :datetime
  end
end
