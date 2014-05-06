class DropTimeSlotReservations < ActiveRecord::Migration
  def change
    drop_table :time_slot_reservations
  end
end
