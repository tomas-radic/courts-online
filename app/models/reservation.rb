class Reservation < ActiveRecord::Base
  belongs_to :player

  def get_fullname
    fullname = ""
    fullname = "#{self.player.firstname} #{self.player.lastname} #{self.player.name_suffix}"
    return fullname.strip
  end
end
