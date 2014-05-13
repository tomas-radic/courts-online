class ReservationsController < ApplicationController

  before_action :load_data

  def index
    @courts_cnt = 4
    @sel_date = '2014-05-08'

  end

  def new 
    @reservation = Reservation.new
  end

  def create 
    @reservation = Reservation.new reservation_params
    if @reservation.save
      redirect_to reservations_url
    else
      render :new
    end
  end

  def edit
    @reservation = Reservation.find(params[:id])
  end

  def update
    @reservation = Reservation.find params[:id]
    if @reservation.update reservation_params  
      redirect_to(reservations_url)
    else
      render :edit
    end
  end

  def destroy
    reservation = Reservation.find(params[:id])
    reservation.destroy
    
    redirect_to(reservations_url)
  end


  # private members -------------------------
  private

  def load_data
    @timesheet = [
      [800, '8:00 - 8:30'],
      [830, '8:30 - 9:00'],
      [900, '9:00 - 9:30'],
      [930, '9:30 - 10:00'],
      [1000, '10:00 - 10:30'],
      [1030, '10:30 - 11:00'],
      [1100, '11:00 - 11:30'],
      [1130, '11:30 - 12:00'],
      [1200, '12:00 - 12:30'],
      [1230, '12:30 - 13:00'],
      [1300, '13:00 - 13:30'],
      [1330, '13:30 - 14:00'],
      [1400, '14:00 - 14:30'],
      [1430, '14:30 - 15:00'],
      [1500, '15:00 - 15:30'],
      [1530, '15:30 - 16:00'],
      [1600, '16:00 - 16:30'],
      [1630, '16:30 - 17:00'],
      [1700, '17:00 - 17:30'],
      [1730, '17:30 - 18:00'],
      [1800, '18:00 - 18:30'],
      [1830, '18:30 - 19:00'],
      [1900, '19:00 - 19:30'],
      [1930, '19:30 - 20:00'],
      [2000, '20:00 - 20:30'],
      [2030, '20:30 - 21:00'],
      [2100, '21:00 - 21:30'],
      [2130, '21:30 - 22:00']
    ]

    @court_numbers = [ 1, 2, 3, 4 ]

    @reservation_statuses = ReservationStatus.all
    
  end

  def reservation_params 
    params.require(:reservation).permit(
      :player_id,
      :res_date,
      :time_slot,
      :court_nr,
      :reservation_status_id
    )
  end

end
