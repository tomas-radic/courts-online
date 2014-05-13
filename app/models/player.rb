class Player < ActiveRecord::Base
  has_many :reservations, dependent: :destroy

  def fullname()
    fullname = ""
    puts self
    if (self)
      fullname = "#{self.lastname} #{self.firstname}"
      fullname += " #{self.name_suffix}" if self.name_suffix && self.name_suffix.length > 0
    end
    
    return fullname
  end

end
