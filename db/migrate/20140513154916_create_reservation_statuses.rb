class CreateReservationStatuses < ActiveRecord::Migration
  def change
    create_table :reservation_statuses do |t|
      t.string :status

      t.timestamps
    end
  end
end
