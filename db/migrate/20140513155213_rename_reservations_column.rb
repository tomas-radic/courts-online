class RenameReservationsColumn < ActiveRecord::Migration
  def change
    rename_column :reservations, :status, :reservation_statuses_id
  end
end
