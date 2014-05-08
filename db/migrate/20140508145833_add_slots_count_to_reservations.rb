class AddSlotsCountToReservations < ActiveRecord::Migration
  def change
    add_column :reservations, :slots_count, :integer
  end
end
