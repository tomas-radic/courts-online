module ApplicationHelper
  # Returns id of reservation based on specified date, time slot and court number.
  def get_reservation_id(res_date, time_slot_id, court_nr)
    id = 0
    r = Reservation.where(res_date: res_date, time_slot: time_slot_id, court_nr: court_nr).first
    id = r.id if r

    return id
  end


  # Returns name of player having a reservation on specified date, time slot and court number.
  def get_reservation_player_name(res_date, time_slot_id, court_nr)
    player_name = ""
    r = Reservation.where(res_date: res_date, time_slot: time_slot_id, court_nr: court_nr).first
    
    if r
      player_name = r.get_fullname
    end

    return player_name
  end


  # Returns either: "available" or "occupied" string, based on whether there is a reservation for specified date, time slot and court number
  def get_cell_class(res_date, time_slot_id, court_nr)
    class_name = "available"
    r = Reservation.where(res_date: res_date, time_slot: time_slot_id, court_nr: court_nr).first
    
    if r
      class_name = r.player.lastname.length > 0 ? "occupied" : "available"
    end

    return class_name
  end

end
