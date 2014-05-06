class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.belongs_to :player
      t.date :res_date
      t.integer :time_slot
      t.integer :court_nr
      t.integer :player_id

      t.timestamps
    end
  end
end
