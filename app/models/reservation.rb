class Reservation < ActiveRecord::Base
  belongs_to :player
  belongs_to :reservation_status

  validates :court_nr, :uniqueness => {:scope => [ :res_date, :time_slot ]}

  def get_fullname
    fullname = ""
    fullname = "#{self.player.firstname} #{self.player.lastname} #{self.player.name_suffix}"
    return fullname.strip
  end
end
