module ApplicationHelper
  def get_player_name_for_reservation(res_date, time_slot_id, court_nr)
    r = Reservation.where(res_date: res_date, time_slot: time_slot_id, court_nr: court_nr).first

    player_name = ""
    if r
      player_name = "#{r.player.firstname} #{r.player.lastname}"
      player_name += " #{r.player.name_suffix}" if r.player.name_suffix.length > 0
    end

    return player_name.strip

  end


  def get_cell_class(res_date, time_slot_id, court_nr)
    class_name = "available"
    r = Reservation.where(res_date: res_date, time_slot: time_slot_id, court_nr: court_nr).first
    if r
      class_name = r.player.lastname.length > 0 ? "occupied" : "available"
    end

    return class_name
  end
end
