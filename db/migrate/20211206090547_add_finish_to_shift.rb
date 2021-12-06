class AddFinishToShift < ActiveRecord::Migration[6.0]
  def change
    add_column :shifts, :finish, :datetime
  end
end
