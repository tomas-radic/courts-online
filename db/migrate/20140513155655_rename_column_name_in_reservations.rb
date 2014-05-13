class RenameColumnNameInReservations < ActiveRecord::Migration
  def change
    rename_column :reservations, :reservation_statuses_id, :reservation_status_id
  end
end
