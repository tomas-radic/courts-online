class CreateTimeSlotReservations < ActiveRecord::Migration
  def change
    create_table :time_slot_reservations do |t|
      t.string :time_slot
      t.string :court1
      t.string :court2
      t.string :court3
      t.string :court4

      t.timestamps
    end
  end
end
